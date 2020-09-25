import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/appointment_card.dart';
import 'package:intl/intl.dart';

import 'package:timeline_tile/timeline_tile.dart';

class DayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  DateTime currentDay = DateTime.now();
  List<DateTime> dateTimesTest = [];
  List<TimelineTile> content = [];

  initState() {
    for (int i = 0; i < 20; i++) {
      dateTimesTest.add(
        DateTime(currentDay.year, currentDay.month, currentDay.day, 2 + i),
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
    dateTimesTest.forEach((element) {
      content.add(
        TimelineTile(
          alignment: TimelineAlign.start,
          endChild: AppointmentCard(element),
        ),
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
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Suche"),
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
