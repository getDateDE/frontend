import 'package:flutter/material.dart';
import 'package:frontend/institute/institute_overview.dart';

void main() {
  runApp(TerminMS());
}

class TerminMS extends StatelessWidget {
  final String _title = "TerminMS";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
