import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/mock_data/employees.dart';

class InstituteAppointmentPlannerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _InstituteAppointmentPlannerPageState();
}

class _InstituteAppointmentPlannerPageState
    extends State<InstituteAppointmentPlannerPage> {
  List<String> allEmployees = mockEmployees;
  Map<String, bool> selectedEmployees = {};
  String newEmployeeName = "";

  int minutesPerSlot = 10;

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  TimeOfDay startTime = TimeOfDay(hour: 8, minute: 0);
  TimeOfDay endTime = TimeOfDay(hour: 18, minute: 0);

  TextEditingController _startTimeTextEditingController =
      TextEditingController();
  TextEditingController _endTimeTextEditingController = TextEditingController();
  TextEditingController _startDateTextEditingController =
      TextEditingController();
  TextEditingController _endDateTextEditingController = TextEditingController();

  final GlobalKey<FormState> key = GlobalKey<FormState>();

  void addNewEmployee() {
    //TODO server request
  }

  void setTextEditingControllerTextWithTimeOfDay(
      TextEditingController controller, TimeOfDay timeOfDay) {
    controller.text = timeOfDay.hour.toString().padLeft(2, "0") +
        ":" +
        timeOfDay.minute.toString().padLeft(2, "0") +
        " Uhr";
  }

  void setTextEditingControllerTextWithDateTime(
      TextEditingController controller, DateTime dateTime) {
    controller.text = dateTime.day.toString().padLeft(2, "0") +
        "." +
        dateTime.month.toString().padLeft(2, "0") +
        "." +
        dateTime.year.toString().padLeft(4, " ");
  }

  bool isTimeOfDayBaseBeforeComparision(TimeOfDay base, TimeOfDay comparision) {
    if (base.hour > comparision.hour) {
      return false;
    }
    if (base.hour == comparision.hour && base.minute > comparision.minute) {
      return false;
    }
    return true;
  }

  @override
  void initState() {
    allEmployees.forEach((element) {
      selectedEmployees[element] = true;
    });
    setTextEditingControllerTextWithTimeOfDay(
        _startTimeTextEditingController, startTime);
    setTextEditingControllerTextWithTimeOfDay(
        _endTimeTextEditingController, endTime);
    setTextEditingControllerTextWithDateTime(
        _startDateTextEditingController, startDate);
    setTextEditingControllerTextWithDateTime(
        _endDateTextEditingController, endDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> checkBoxes = [];
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Termine hinzufügen"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Termine für:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 30,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 200),
                  child: Column(
                    children: checkBoxes +
                        <Widget>[
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  if (newEmployeeName != null &&
                                      newEmployeeName.isNotEmpty &&
                                      !allEmployees.contains(newEmployeeName)) {
                                    addNewEmployee();
                                    setState(() {
                                      allEmployees.add(newEmployeeName);
                                      selectedEmployees[newEmployeeName] = true;
                                      newEmployeeName = "";
                                    });
                                    return;
                                  }
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                          "Der Angestellte konnte nicht hinzugefügt werden, da der Name leer ist oder es bereits einen Angestellten mit diesem Namen gibt"),
                                    ),
                                  );
                                },
                              ),
                              Expanded(
                                child: TextFormField(
                                  initialValue: "",
                                  onChanged: (String value) =>
                                      newEmployeeName = value,
                                ),
                              ),
                            ],
                          ),
                        ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 10),
                width: 85,
                child: Text(
                  "Tag: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: TextFormField(
                  readOnly: true,
                  onTap: () async {
                    DateTime time = await showDatePicker(
                      cancelText: "Abbrechen",
                      confirmText: "Bestätigen",
                      helpText: "Bitte wählen sie die Startzeit aus",
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 1000)),
                      initialDate: startDate,
                    );
                    if (time != null) {
                      setState(() {
                        startDate = time;
                        setTextEditingControllerTextWithDateTime(
                            _startDateTextEditingController, startDate);
                        if (startDate.isAfter(endDate)) {
                          endDate = DateTime(
                              startDate.year, startDate.month, startDate.day);
                          setTextEditingControllerTextWithDateTime(
                              _endDateTextEditingController, endDate);
                        }
                      });
                    }
                  },
                  controller: _startDateTextEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Startdatum",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text("-"),
              ),
              Expanded(
                child: TextFormField(
                  readOnly: true,
                  onTap: () async {
                    DateTime time = await showDatePicker(
                      cancelText: "Abbrechen",
                      confirmText: "Bestätigen",
                      helpText: "Bitte wählen sie die Startzeit aus",
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 1000)),
                      initialDate: endDate,
                    );
                    if (time != null) {
                      setState(() {
                        endDate = time;
                        setTextEditingControllerTextWithDateTime(
                            _endDateTextEditingController, endDate);
                        if (endDate.isBefore(startDate)) {
                          startDate = DateTime(
                              endDate.year, endDate.month, endDate.day);
                          setTextEditingControllerTextWithDateTime(
                              _startDateTextEditingController, startDate);
                        }
                      });
                    }
                  },
                  controller: _endDateTextEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enddatum",
                  ),
                ),
              ),
              Container(
                width: 15,
              ),
            ],
          ),
          Container(
            height: 30,
          ),
          Row(
            children: [
              Container(
                width: 85,
                padding: EdgeInsets.only(left: 15, right: 10),
                child: Text(
                  "Uhrzeit: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: TextFormField(
                  readOnly: true,
                  onTap: () async {
                    TimeOfDay time = await showTimePicker(
                      cancelText: "Abbrechen",
                      confirmText: "Bestätigen",
                      helpText: "Bitte wählen sie die Startzeit aus",
                      context: context,
                      initialTime: startTime,
                    );
                    if (time != null) {
                      setState(() {
                        startTime = time;
                        setTextEditingControllerTextWithTimeOfDay(
                            _startTimeTextEditingController, startTime);
                        if (!isTimeOfDayBaseBeforeComparision(
                            startTime, endTime)) {
                          endTime = TimeOfDay(
                              hour: startTime.hour, minute: startTime.minute);
                          setTextEditingControllerTextWithTimeOfDay(
                              _endTimeTextEditingController, endTime);
                        }
                      });
                    }
                  },
                  controller: _startTimeTextEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Startzeit",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text("-"),
              ),
              Expanded(
                child: TextFormField(
                  readOnly: true,
                  onTap: () async {
                    TimeOfDay time = await showTimePicker(
                      cancelText: "Abbrechen",
                      confirmText: "Bestätigen",
                      helpText: "Bitte wählen sie die Endzeit aus",
                      context: context,
                      initialTime: endTime,
                    );
                    if (time != null) {
                      setState(() {
                        endTime = time;
                        setTextEditingControllerTextWithTimeOfDay(
                            _endTimeTextEditingController, endTime);
                        if (isTimeOfDayBaseBeforeComparision(
                            endTime, startTime)) {
                          startTime = TimeOfDay(
                              hour: endTime.hour, minute: endTime.minute);
                          setTextEditingControllerTextWithTimeOfDay(
                              _startTimeTextEditingController, startTime);
                        }
                      });
                    }
                  },
                  controller: _endTimeTextEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Endzeit",
                  ),
                ),
              ),
              Container(
                width: 15,
              ),
            ],
          ),
          Container(
            height: 30,
          ),
          Form(
              key: key,
              child: Row(
                children: [
                  Container(
                    width: 85,
                    padding: EdgeInsets.only(left: 15, right: 10),
                    child: Text(
                      "Minuten pro Termin:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (String value) {
                        int val = int.parse(value);
                        if (val == null) {
                          minutesPerSlot = -1;
                        } else {
                          minutesPerSlot = val;
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 15,
                  ),
                ],
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {},
      ),
    );
  }
}
