import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'SignUpPage.dart';
import 'theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final yMd = DateFormat.yMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(4289909129),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
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
       body: Row(
         children: [
           Container(
             width: 200,
             height: 300,
             child: Padding(
               padding: EdgeInsets.only(top: 20),
               child: Column(
                 children: [
                   Text(
                     yMd.toString(),
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 10,
                         fontWeight: FontWeight.bold),
                   ),
                   TextField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       prefixIcon: Icon(Icons.adb_rounded, color: Colors.grey),
                     ),
                   )
                 ],
               ),
             ),
           )
         ],
       )
    );
  }
}


