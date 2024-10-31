import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroPensamentos extends StatefulWidget {
  const CadastroPensamentos({super.key});

  @override
  State<CadastroPensamentos> createState() => _CadastroPensamentosState();
}

class _CadastroPensamentosState extends State<CadastroPensamentos> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();

  final CollectionReference thinks =
      FirebaseFirestore.instance.collection("thinks");

  Future<void> create() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return myDialogBox(
            nome: "Pensamento do dia",
            descricao: "Create",
            onPressed: () {
              String nome = nameController.text;
              String descricao = descricaoController.text;
              AddItens(nome, descricao);
              Navigator.pop(
                  context); //caixinhas de onde coloco os pensamentos do dia
            },
          );
        });
  }

  void AddItens(String nome, String descricao) {
    thinks.add({
      'nome': nome, //unico campo utilizado para verificar
      'descricao': descricao,
    });
  }

  Future<void> update(DocumentSnapshot documentSnapshot) async {
    nameController.text = documentSnapshot['nome'];
    descricaoController.text = documentSnapshot['descricao'];
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return myDialogBox(
              nome: "Update",
              descricao: "Update",
              onPressed: () async {
                String nome = nameController.text;
                String descricao = descricaoController.text;
                AddItens(nome, descricao);
                await thinks
                    .doc(documentSnapshot.id)
                    .update({'nome': nome, 'descricao': descricao});
                nameController.text = '';
                descricaoController.text = '';
                Navigator.pop(context); //caixinhas do update
              });
        });
  }

  Future<void> delete(String pId) async {
    await thinks.doc(pId).delete();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      backgroundColor: Colors.red,
      duration: Duration(milliseconds: 500),
      content: Text("Deletado!"),
    ));
  }

  String searchText = '';
  void onSearchChange(String value) {
    setState(() {
      searchText = value;
    });
  }

  bool isSearchClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(143, 188, 143, 63),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: isSearchClick
              ? Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    onChanged: onSearchChange,
                    controller: _searchController,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 12),
                        hintText: "Procurando...",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                )
              : Text(
                  "Reflexões pessoais",
                  style: GoogleFonts.figtree(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isSearchClick = !isSearchClick;
                  });
                },
                icon: Icon(
                  isSearchClick ? Icons.close : Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        body: StreamBuilder(
          stream: thinks.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapShot) {
            if (streamSnapShot.hasData) {
              final List<DocumentSnapshot> items = streamSnapShot.data!.docs
                  .where(
                    (doc) => doc['nome'].toLowerCase().contains(
                          searchText.toLowerCase(),
                        ),
                  )
                  .toList();
              return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                            items[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              documentSnapshot['nome'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            subtitle: Text(documentSnapshot['descricao']),
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () => update(documentSnapshot),
                                    icon: const Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () =>
                                        delete(documentSnapshot.id),
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: create,
          backgroundColor: Colors.greenAccent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ));
  }

  Dialog myDialogBox({
    // required BuildContext context,
    required String nome,
    required String descricao,
    required VoidCallback onPressed,
  }) =>
      Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Text(
                      nome,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Titulo",
                    hintText: 'Example',
                  ),
                ),
                TextField(
                  controller: descricaoController,
                  decoration: const InputDecoration(
                    labelText: "Descreva seu pensamento",
                    hintText: 'Hoje me senti...',
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: onPressed,
                  child: Text(descricao),
                ),
                SizedBox(height: 10),
              ],
            ),
          ));
}
