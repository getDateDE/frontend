import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/institute_pages/institute_appointment_planner_page.dart';
import 'package:frontend/mock_data/employees.dart';
import 'package:openapi/api.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class InstituteHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InstituteHomePageState();
}

class _InstituteHomePageState extends State<InstituteHomePage> {
  List<String> allEmployees = mockEmployees;
  Map<String, bool> selectedEmployees = {};
  List<Slot> slots = [];
  double reserved = 66;
  double free = 10;
  GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  List<CircularStackEntry> _chartData;

  @override
  void initState() {
    allEmployees.forEach((element) {
      selectedEmployees[element] = true;
    });
    _chartData = <CircularStackEntry>[
      CircularStackEntry(
        <CircularSegmentEntry>[
          CircularSegmentEntry(free, Colors.blue, rankKey: 'frei'),
          CircularSegmentEntry(reserved, Colors.red, rankKey: 'belegt'),
        ],
        rankKey: "Slot Statistik",
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<CheckboxListTile> checkBoxes = [];
    allEmployees.forEach((element) {
      checkBoxes.add(CheckboxListTile(
          title: Text(element),
          value: selectedEmployees[element],
          onChanged: (bool value) {
            setState(() {
              selectedEmployees[element] = value;
            });
          }));
    });

    double chartSize =
        MediaQuery.of(context).size.width > MediaQuery.of(context).size.height
            ? MediaQuery.of(context).size.width * 0.3
            : MediaQuery.of(context).size.height * 0.3;
    return Scaffold(
      appBar: AppBar(
        title: Text("Institute"),
      ),
      body: ListView(
        children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Diese Woche",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Termine für:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 30,
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Column(
                        children: checkBoxes,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Termine",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  AnimatedCircularChart(
                    holeRadius: chartSize * 0.2,
                    key: _chartKey,
                    size: Size(chartSize, chartSize),
                    initialChartData: _chartData,
                    chartType: CircularChartType.Radial,
                  ),
                  Container(
                    width: chartSize,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              color: Colors.blue,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                  free.toStringAsFixed(0) + " freie Termine"),
                            ),
                          ],
                        ),
                        Container(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              color: Colors.red,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(reserved.toStringAsFixed(0) +
                                  " belgte Termine"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(),
            ] +
            ListTile.divideTiles(context: context, tiles: [
              ListTile(),
              ListTile(
                title: Text("Termine bearbeiten"),
                leading: Icon(Icons.edit),
                onTap: () {},
              ),
              ListTile(
                title: Text("Termineplan hinzufügen"),
                leading: Icon(Icons.add),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InstituteAppointmentPlannerPage(),)),
              ),
            ]).toList(),
      ),
    );
  }
}
