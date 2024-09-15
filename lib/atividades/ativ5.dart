import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myApState();
}

class _myApState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Exemplo'),
        ),

        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "It is a long established fact that a reader will be distracted by the readable content of a"
              " page when looking at its layout. ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "It is a long established fact that a reader will be distracted by the readable content of a"
              " page when looking at its layout. ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],

        ),
      ),
    );
  }
}
