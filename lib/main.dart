import 'package:flutter/material.dart';
import 'package:frontend/day_page/confirmation_page.dart';
void main() {
  runApp(TerminMS());
}

class TerminMS extends StatelessWidget {
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ConfirmationPage(),
    );
  }
}
