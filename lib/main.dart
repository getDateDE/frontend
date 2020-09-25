import 'package:flutter/material.dart';
import 'package:frontend/day_page/day_page.dart';

void main() {
  runApp(GetDate());
}

class GetDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DateTime> _dateTimes = [];
    for (int i = 0; i < 12; i++) {
      _dateTimes.add(DateTime(2000, 1, 1, 8 + i));
    }

    return MaterialApp(
      title: 'GetDate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DayPage(_dateTimes),
    );
  }
}
