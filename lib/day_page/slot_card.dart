import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/const/current_user.dart';
import 'package:frontend/day_page/confirmation_page.dart';
import 'package:frontend/day_page/register_page.dart';
import 'package:intl/intl.dart';
import 'package:openapi/api.dart';

class SlotCard extends StatelessWidget {
  final Slot _slot;

  SlotCard(this._slot);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (currentUser != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ConfirmationPage(),
            ),
          );
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RegisterPage(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Card(
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              child: Text(
                DateFormat.Hm().format(DateTime.fromMillisecondsSinceEpoch(
                        this._slot.dateTimestamp * 1000)) +
                    "-" +
                    DateFormat.Hm().format(DateTime.fromMillisecondsSinceEpoch(
                        (this._slot.dateTimestamp +
                                this._slot.durationInMinutes * 60) *
                            1000)),
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              alignment: Alignment.centerLeft,
            ),
            height: 60,
          ),
          color: Colors.green,
        ),
      ),
    );
  }
}
