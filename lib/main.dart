import 'package:flutter/material.dart';
import 'package:frontend/institute/institute_overview.dart';

void main() {
  runApp(TerminMS());
}

class GetDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    List<DateTime> _dateTimes = [];
    for (int i = 0; i < 12; i++) {
      _dateTimes.add(DateTime(2000, 1, 1, 8 + i));
    }
    */

    return MaterialApp(
      title: 'TerminMS',
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15),
          child: InstituteOverview(),
        ),
      ),
    );
  }
}
