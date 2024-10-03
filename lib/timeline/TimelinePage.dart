import 'dart:convert';
import 'dart:developer';
import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:novo_projeto/models/timeline.dart';
import 'package:novo_projeto/timeline/components/my_timeline.dart';
import '../loginPage.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../models/timeline.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Timeline> understandJson = [];
  late String mensagemSelecionada = '';

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  final String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  // PASSO 1: PEGAR A DATA DO CELULAR
  //PASSO 2: COMPARAR AS DATAS QUE TEM NA LISTA E SE A DATA QUE FOR MAIS PROXIMA RETIRA A MENSAGEM DELA


  String getPreviousDate(int daysAgo) {
    DateTime previousDate = DateTime.now().subtract(Duration(days: daysAgo));
    return DateFormat('dd/MM/yyyy').format(previousDate);
  }

  Future<void> loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/messagens.json');
    final jsonData = json.decode(jsonString);
    understandJson = (jsonData['mensagensMotivacionais'] as Iterable)
        .map((e) => Timeline.fromJson(e))
        .toList();

      understandJson.shuffle(); 
      if (understandJson.isNotEmpty) {
        mensagemSelecionada = understandJson.first.mensagem;
      } else {
        mensagemSelecionada = "Nenhuma mensagem disponível";
      }
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
                children: [
                  MyTimeLineTile(
                    isFirst: true,
                    isLast: false,
                    isPast: true,
                    eventCard: "$formattedDate : $mensagemSelecionada",
                  ),
                  MyTimeLineTile(
                    isFirst: false,
                    isLast: false,
                    isPast: true,
                    eventCard:
                    " ${getPreviousDate(
                        1)} : $mensagemSelecionada",
                  ),
                  MyTimeLineTile(
                    isFirst: false,
                    isLast: false,
                    isPast: true,
                    eventCard:
                    "${getPreviousDate(
                        2)} : Não olhe para o relógio; faça o que ele faz. Continue avançando.",
                  ),
                  MyTimeLineTile(
                    isFirst: false,
                    isLast: false,
                    isPast: true,
                    eventCard:
                    "${getPreviousDate(3)} : O único limite é a sua mente.",
                  ),
                  MyTimeLineTile(
                    isFirst: false,
                    isLast: false,
                    isPast: true,
                    eventCard:
                    "${getPreviousDate(
                        4)} : Grandes coisas nunca vêm de zonas de conforto.",
                  ),
                  MyTimeLineTile(
                    isFirst: false,
                    isLast: false,
                    isPast: true,
                    eventCard:
                    "${getPreviousDate(
                        5)} : Empurre-se, porque ninguém mais vai fazer isso por você.",
                  ),
                  MyTimeLineTile(
                    isFirst: false,
                    isLast: false,
                    isPast: true,
                    eventCard:
                    "${getPreviousDate(6)} : Não pare quando estiver cansado.",
                  ),
                  MyTimeLineTile(
                    isFirst: false,
                    isLast: false,
                    isPast: true,
                    eventCard:
                    "${getPreviousDate(7)} : O único limite é a sua mente.",
                  ),
                  MyTimeLineTile(
                    isFirst: false,
                    isLast: true,
                    isPast: true,
                    eventCard:
                    "${getPreviousDate(8)} : O único limite é a sua mente.",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
