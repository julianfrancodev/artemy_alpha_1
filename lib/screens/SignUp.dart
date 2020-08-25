import 'package:artemy_beta_2/config/Animation.dart';
import 'package:artemy_beta_2/widgets/EmailInput.dart';
import 'package:artemy_beta_2/widgets/ForgotButton.dart';
import 'package:artemy_beta_2/widgets/PasswordInput.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/login.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4),
              ])),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeAnimation(
                    0.5,
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  EmailInput(),
                  SizedBox(
                    height: 30,
                  ),
                  PasswordInput(),
                  ForgotButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
