import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/appointment_card.dart';
import 'package:intl/intl.dart';

class DayPage extends StatefulWidget {
  final List<DateTime> _dateTime;

  DayPage(this._dateTime);

  @override
  State<StatefulWidget> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  List<AppointmentCard> content = [];

  @override
  Widget build(BuildContext context) {
    content = [];
    widget._dateTime.forEach((element) {
      content.add(AppointmentCard(element));
    });

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(DateFormat.yMMMMEEEEd().format(widget._dateTime.first)),
      ),
      body: ListView(
        children: content,
      ),
    );
  }
}
