import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/day_page.dart';

class InstituteOverview extends StatefulWidget {
  InstituteOverview();

  @override
  State<StatefulWidget> createState() => _InstituteOverviewState();
}

class _InstituteOverviewState extends State<InstituteOverview> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextFormField(
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.search), border: OutlineInputBorder()),
        ),
        Container(
          height: 10,
        ),
        ListTile(
            title: Text("Haircut"),
            subtitle: Text("Hafenweg 16"),
            trailing: Icon(Icons.event),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DayPage()))),
      ],
    );
  }
}
