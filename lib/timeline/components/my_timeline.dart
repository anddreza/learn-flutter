import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'event_card.dart';
import 'package:intl/intl.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  const MyTimeLineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.eventCard,
  });

  @override
  Widget build(BuildContext context) {
    final yMd = DateFormat.yMd().format(DateTime.now());

    return SizedBox(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: Color(4281683477)),
        indicatorStyle: IndicatorStyle(
            width: 40,
            color: Color(4289909129),
            iconStyle: IconStyle(iconData: Icons.done)),
        endChild: EventCard(
          child: eventCard,
        ),
      ),
    );
  }
}
