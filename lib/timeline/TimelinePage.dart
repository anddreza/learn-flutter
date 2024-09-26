import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:novo_projeto/timeline/components/my_timeline.dart';
import '../loginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  final String yMd = DateFormat.yMd().format(DateTime.now());
  final String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());

  String getPreviousDate(int daysAgo) {
    DateTime previousDate = DateTime.now().subtract(Duration(days: daysAgo));
    return DateFormat('dd/MM/yyyy').format(previousDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Menu'),
              onTap: () {
                // Ação ao clicar no Menu
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Center(
          child: Text(
            "Timeline",
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(

              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              children:  [
                MyTimeLineTile(
                  isFirst: true,
                  isLast: false,
                  isPast: true,
                  eventCard: "$formattedDate : Acredite em si mesmo e em tudo o que você é.",
                ),
                MyTimeLineTile(
                  isFirst: false,
                  isLast: false,
                  isPast: true,
                  eventCard: " ${getPreviousDate(1)} : O sucesso não é a chave para a felicidade.",

                ),
                MyTimeLineTile(
                  isFirst: false,
                  isLast: false,
                  isPast: true,
                  eventCard: "${getPreviousDate(2)} : Não olhe para o relógio; faça o que ele faz. Continue avançando.",
                ),
                MyTimeLineTile(
                  isFirst: false,
                  isLast: true,
                  isPast: true,
                  eventCard: "${getPreviousDate(3)}  O único limite é a sua mente.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
