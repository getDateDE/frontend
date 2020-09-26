import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/appointment_card.dart';
import 'package:intl/intl.dart';
import 'package:openapi/api.dart';

import 'package:timeline_tile/timeline_tile.dart';

import 'institute_timeline_element.dart';

class InstituteAppointmentManagerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InstituteAppointmentManagerPageState();
}

class _InstituteAppointmentManagerPageState extends State<InstituteAppointmentManagerPage> {
  DateTime currentDay = DateTime.now();
  List<Slot> slots = [];
  List<Widget> content = [];

  initState() {
    for (int i = 0; i < 20; i++) {
      Slot slot = Slot();
      //slot.date = DateTime(2000, 1, 1 , 12 + i * 5%60, i * 5 % 60);
      slots.add(slot
      );
    }
    super.initState();
    load();
  }

  previous() {
    DateTime newCurrentDay = currentDay.add(Duration(days: -1));

    if (newCurrentDay.isAfter(DateTime.now())) {
      return;
    }

    currentDay = newCurrentDay;

    load();
  }

  next() {
    currentDay = currentDay.add(Duration(days: 1));

    load();
  }

  load() {
    // TODO make http request with current day
    setState(() {
      createContent();
    });
  }

  createContent() {
    EdgeInsets startEndPadding = EdgeInsets.fromLTRB(30, 15, 15, 15);
    content = [];
    content.add(TimelineTile(
      alignment: TimelineAlign.start,
      endChild: Padding(
        padding: startEndPadding,
        child: Text(
          "Anfang",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      isFirst: true,
    ));
    slots.forEach((element) {
      content.add(
          InstituteTimelineElement(Slot())
      );
    });
    content.add(TimelineTile(
      alignment: TimelineAlign.start,
      endChild: Padding(
        padding: startEndPadding,
        child: Text(
          "Ende",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      isLast: true,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            DateFormat("dd.MM.yyyy").format(currentDay),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_arrow_left), label: "Vorher"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: "Suche"),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_arrow_right), label: "Nachher"),
        ],
        onTap: (int index) {
          if (index == 0) {
            previous();
          } else if (index == 1) {
            Navigator.of(context).pop();
          } else if (index == 2) {
            next();
          }
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: content,
        ),
      ),
    );
  }
}
