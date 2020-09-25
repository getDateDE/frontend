import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentCard extends StatefulWidget {
  final DateTime _dateTime;

  AppointmentCard(this._dateTime);

  @override
  State<StatefulWidget> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(left: 10),
        child: Align(
          child: Text(
            DateFormat.Hm().format(widget._dateTime),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          alignment: Alignment.centerLeft,
        ),
        height: 60,
      ),
      color: Colors.blueAccent,
    );
  }
}
