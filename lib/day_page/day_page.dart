import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:timeline_tile/timeline_tile.dart';

class DayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  DateTime currentDay = DateTime.now();

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
    });
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
      body:TimelineTile(alignment: TimelineAlign.start,isFirst: true, isLast: true,),
    );
  }
}
