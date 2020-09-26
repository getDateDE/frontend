import 'package:flutter/material.dart';
import 'package:frontend/const/current_user.dart';
import 'package:frontend/institute_pages/institute_appointment_planner_page.dart';
import 'package:frontend/institute_pages/institute_home.dart';
import 'package:openapi/api.dart';

import 'institute_pages/institute_appointment_manager.dart';

DefaultApi defaultApi;
ApiClient apiClient;

void main() {
  apiClient = ApiClient(basePath: "http://172.16.2.201:8080/api");
  defaultApi = DefaultApi(apiClient);

  loadCredentials();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TerminMS());
}

class TerminMS extends StatelessWidget {
  final String _title = "TerminMS";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: InstituteAppointmentManagerPage(),
      ),
    );
  }
}
