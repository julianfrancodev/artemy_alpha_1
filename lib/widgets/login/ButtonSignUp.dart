import 'package:artemy_beta_2/config/Animation.dart';
import 'package:flutter/material.dart';

class ButtonSignUp extends StatefulWidget {
  @override
  _ButtonSignUpState createState() => _ButtonSignUpState();
}

class _ButtonSignUpState extends State<ButtonSignUp> {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
        1,
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          width: double.infinity,
          child: RaisedButton(
            elevation: 5,
            onPressed: () {},
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.white,
            child: Text(
              'Crear Cuenta',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
