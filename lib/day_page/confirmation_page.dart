import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/institute/institute_overview.dart';
import 'package:frontend/main.dart';
import 'package:intl/intl.dart';

class ConfirmationPage extends StatelessWidget {
  //TODO implement User
  //TODO implement Slot

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Text(
              "Diese Infomationen werden weitergegeben, um eine Anfrage für diesen Termin zu machen:",
              style: TextStyle(fontSize: 16,),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: TextFormField(
              initialValue: "Vorname",
              enabled: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Vorname"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TextFormField(
              initialValue: "Nachname",
              enabled: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Nachname"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TextFormField(
              initialValue: "E-Mail",
              enabled: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "E-Mail"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    initialValue:
                        DateFormat.Hm().format(DateTime(2000, 1, 1, 16, 30)),
                    enabled: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Startzeit"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Text(
                    "-",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    initialValue:
                        DateFormat.Hm().format(DateTime(2000, 1, 1, 17, 0)),
                    enabled: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Endzeit"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: FlatButton(
              height: 60,
              color: Color.fromARGB(255, 200, 200, 200),
              child: Text(
                "Bestätigen",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                //TODO server request to take appointment
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TerminMS(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
