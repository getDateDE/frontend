import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/confirmation_page.dart';
import 'package:frontend/day_page/login_page.dart';
import 'package:frontend/util/reusable_widgets/password_textfield.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _firstName, _lastName, _email, _password;
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Gebe deinen Vornamen ein...",
                    labelText: "Vorname"),
                onSaved: (String value) => _firstName = value,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Vorname kann nicht leer sein!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Gebe deinen Nachnamen ein...",
                    labelText: "Nachname"),
                onSaved: (String value) => _lastName = value,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Nachname kann nicht leer sein!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Gebe deine E-Mail ein...",
                    labelText: "E-Mail"),
                onSaved: (String value) => _email = value,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "E-Mail kann nicht leer sein!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: PasswordTextField((String value) => _password = value),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: FlatButton(
                child: Text(
                  "Registrieren",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                height: 60,
                color: Color.fromARGB(255, 200, 200, 200),
                onPressed: () {
                  if (!_key.currentState.validate()) {
                    return;
                  }
                  _key.currentState.save();
                  //TODO register process
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmationPage(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
              child: Container(
                height: 60,
                child: OutlinedButton(
                  child: Text(
                    "Einloggen",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //color: Color.fromARGB(255, 200, 200, 200),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
