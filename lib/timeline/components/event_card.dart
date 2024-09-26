import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  final String child;
  EventCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(color: Color(4289909129),
      borderRadius: BorderRadius.circular(8)
      ),
      child:
        Text(child)
    );
  }
}
