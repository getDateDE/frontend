import 'package:flutter/material.dart';
import 'package:frontend/const/current_user.dart';
import 'package:frontend/day_page/register_page.dart';
import 'package:frontend/institute/institute_overview.dart';
import 'package:openapi/api.dart';

DefaultApi defaultApi;
ApiClient apiClient;

void main() {
  apiClient = ApiClient(basePath: "http://172.16.2.205:8080/api");
  defaultApi = DefaultApi(apiClient);

  loadCredentials();

  runApp(TerminMS());
}

class TerminMS extends StatelessWidget {
  final String _title = "TerminMS";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.blueGrey,
        accentColor: Colors.grey,
        bottomAppBarColor: Colors.black38,
        textSelectionColor: Colors.black38,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "OpenSans",
      ),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15),
          child: InstituteOverview(),
        ),
      ),
    );
  }
}
