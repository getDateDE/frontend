import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/day_page/confirmation_page.dart';
import 'package:frontend/util/reusable_widgets/password_textfield.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
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
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: FlatButton(
                height: 60,
                color: Color.fromARGB(255, 200, 200, 200),
                child: Text(
                  "Einloggen",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  if (!_key.currentState.validate()) {
                    return;
                  }
                  _key.currentState.save();
                  //TODO login process
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmationPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
