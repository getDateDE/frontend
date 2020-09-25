import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/confirmation_page.dart';
import 'package:frontend/day_page/register_page.dart';
import 'package:intl/intl.dart';

class AppointmentCard extends StatelessWidget {
  final DateTime _dateTime;

  AppointmentCard(this._dateTime);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO check if user != null then go directly to Confirmation
        if (false) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ConfirmationPage(),
            ),
          );
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RegisterPage(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Card(
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              child: Text(
                DateFormat.Hm().format(this._dateTime),
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              alignment: Alignment.centerLeft,
            ),
            height: 60,
          ),
          color: Colors.green,
        ),
      ),
    );
  }
}
