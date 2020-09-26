import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/slot_card.dart';
import 'package:frontend/main.dart';
import 'package:intl/intl.dart';
import 'package:openapi/api.dart';

import 'package:timeline_tile/timeline_tile.dart';

class DayPage extends StatefulWidget {
  final Institute institute;

  DayPage(this.institute);

  @override
  State<StatefulWidget> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  DateTime currentDay = DateTime.now();
  List<Slot> slots = [];
  List<TimelineTile> content = [];

  Future<SlotsSearchResponse> _future;

  initState() {
    super.initState();
    load();
  }

  isPast(DateTime date) {
    return date.isAfter(DateTime.now());
  }

  previous() {
    DateTime newCurrentDay = currentDay.add(Duration(days: -1));

    if (isPast(newCurrentDay)) {
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
    _future = defaultApi.getInstituteSlots(widget.institute.id);
    _future.then((SlotsSearchResponse slotsSearchResponse) {
      slots = slotsSearchResponse.data
        ..sort((a, b) => a.dateTimestamp - b.dateTimestamp);
      return;
    });

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
    slots.forEach((Slot element) {
      content.add(
        TimelineTile(
          alignment: TimelineAlign.start,
          endChild: SlotCard(element),
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
    return FutureBuilder(
      future: _future,
      builder:
          (BuildContext context, AsyncSnapshot<SlotsSearchResponse> snapshot) {
        if (snapshot.hasData) {
          slots = snapshot.data.data;

          createContent();

          return Scaffold(
            appBar: AppBar(
              leading: Container(),
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  DateFormat("dd.MM.yyyy").format(currentDay),
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "RobotoMono",
                  ),
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
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Suche"),
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
              child: Scrollbar(
                child: ListView(
                  children: content,
                ),
              ),
            ),
          );
        } else {
          List<Widget> children;
          if (snapshot.hasError) {
            children = [
              Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Fehler beim Laden der Termine..."),
              ),
            ];
          } else {
            children = [
              SizedBox(
                child: CircularProgressIndicator(),
                width: 60,
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Lade Termine..."),
              ),
            ];
          }
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            ),
          );
        }
      },
    );
  }
}
