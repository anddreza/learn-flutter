import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroPensamentos extends StatefulWidget {
  const CadastroPensamentos({super.key});

  @override
  State<CadastroPensamentos> createState() => _CadastroPensamentosState();
}

class _CadastroPensamentosState extends State<CadastroPensamentos> {
  final CollectionReference thinks = FirebaseFirestore.instance.collection("thinks");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(143, 188, 143, 63),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("Reflexões pessoais",
          style: GoogleFonts.figtree(
              fontSize: 10,
              color: Colors.black,
        ),
      ),
    ),
      body: StreamBuilder(stream: thinks.snapshots(), builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapShot){
        if(streamSnapShot.hasData){
          return ListView.builder(
              itemCount: streamSnapShot.data!.docs.length,
              itemBuilder: (context, index){
                final DocumentSnapshot documentSnapshot = streamSnapShot.data!.docs[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        documentSnapshot['nome'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20
                      ),
                      ),
                      subtitle: Text(documentSnapshot['descricao']),
                    ),
                  ),
                ),
              );

      });
    }
        return const Center(
          child: CircularProgressIndicator(),
        );
  })
 );
}
