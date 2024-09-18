import 'package:flutter/material.dart';

class scrollPage extends StatefulWidget {
  const scrollPage({super.key});

  @override
  State<scrollPage> createState() => _scrollPageState();
}

class _scrollPageState extends State<scrollPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sign up",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
