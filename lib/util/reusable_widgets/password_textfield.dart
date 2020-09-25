import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final Function(String) onChanged;

  PasswordTextField(this.onChanged);

  @override
  State<StatefulWidget> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isPasswordVisible = false;

  Key _keyUniqueKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyUniqueKey,
      child: TextFormField(
        validator: (String value) {
          if (value.length < 8) {
            return "Das Passwort muss mindestens 8 Zeichen enthalten!";
          }
          return null;
        },
        onChanged: widget.onChanged,
        obscureText: !_isPasswordVisible,
        decoration: InputDecoration(
            labelText: "Password",
            hintText: "Gebe dein Password ein...",
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(!_isPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off),
              onPressed: () =>
                  setState(() => _isPasswordVisible = !_isPasswordVisible),
            )),
      ),
    );
  }
}
