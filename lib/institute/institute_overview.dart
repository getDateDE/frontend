import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstituteOverview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InstituteOverviewState();
}

class _InstituteOverviewState extends State<InstituteOverview> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [
      TextFormField(
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.search), border: OutlineInputBorder()),
      ),
      Container(
        height: 10,
      ),
    ];

    //List<Institute> institutes;

    //defaultApi.getInstitutes(institute: institutes);

    return ListView(
      children: _children,
    );
  }
}
