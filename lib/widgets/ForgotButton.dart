import 'package:artemy_beta_2/config/Animation.dart';
import 'package:flutter/material.dart';

class ForgotButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(1,
        Container(
          alignment: Alignment.centerRight,
          child: FlatButton(
            onPressed: () {},
            padding: EdgeInsets.only(right: 0.0),
            child: Text(
              'Olvidaste tu contraseña?',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
    );
  }
}
