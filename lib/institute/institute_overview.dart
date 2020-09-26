import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/day_page.dart';
import 'package:frontend/main.dart';
import 'package:openapi/api.dart';

class InstituteOverview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InstituteOverviewState();
}

class _InstituteOverviewState extends State<InstituteOverview> {
  int _currentPage = 1;
  final int _pageSize = 7;
  bool initial = true;

  ScrollController controller;
  List<Institute> items = [];

  void _scrollListener() {
    if (controller.position.extentAfter < 3) {
      setState(() {
        initial = false;
        _currentPage += 1;
        defaultApi
            .getInstitutes(page: _currentPage, pageSize: _pageSize)
            .then((InstitutesSearchResponse response) {
          if (response.data.isNotEmpty) {
            items.addAll(response.data);
          }
        });
      });
    }
  }

  @override
  void initState() {
    super.initState();
    controller = new ScrollController()..addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<InstitutesSearchResponse>(
        future: initial
            ? defaultApi.getInstitutes(page: _currentPage, pageSize: _pageSize)
            : Future.value(InstitutesSearchResponse()
              ..data = []
              ..total = 0),
        builder: (BuildContext context,
            AsyncSnapshot<InstitutesSearchResponse> snapshot) {
          List<Widget> children = [];
          if (snapshot.hasData) {
            children = [
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                height: 10,
              ),
            ];

            if (initial) {
              items = snapshot.data.data;
            }

            items.forEach((Institute institute) {
              children.add(ListTile(
                leading: Icon(Icons.event),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DayPage(institute),
                )),
                title: Text(institute.name),
                subtitle: Text(institute.description),
              ));
            });
            if (items.isEmpty) {
              children.addAll(
                [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Icon(
                    Icons.not_interested,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      "Keine Institute gefunden!",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                    ),
                  ),
                ],
              );
            }

            return Scrollbar(
              child: ListView(
                controller: controller,
                children: children,
              ),
            );
          } else {
            if (snapshot.hasError) {
              children = [
                Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text("Fehler beim Laden der Institute..."),
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
                  child: Text("Lade Institute..."),
                ),
              ];
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            );
          }
        });
  }
}
