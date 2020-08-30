import 'package:artemy_beta_2/config/Animation.dart';
import 'package:artemy_beta_2/screens/SignUp.dart';
import 'package:artemy_beta_2/widgets/login/ButtonSignUp.dart';
import 'package:artemy_beta_2/widgets/login/EmailInput.dart';
import 'package:artemy_beta_2/widgets/login/ForgotButton.dart';
import 'package:artemy_beta_2/widgets/login/PasswordInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Widget _buildSocialButton(Function onTap, AssetImage logo) {
    return FadeAnimation(
        1,
        GestureDetector(
            onTap: onTap,
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0),
                ],
                image: DecorationImage(
                  image: logo,
                ),
              ),
            )));
  }

  Widget _buildSignInLink() {
    return FadeAnimation(
        1,
        GestureDetector(
          onTap: () {
           Navigator.pushNamed(context, '/signup');
          },
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'No tienes una cuenta? ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400)),
                TextSpan(
                    text: 'Crear cuenta',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/signup.jpg'),
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
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeAnimation(
                        0.5,
                        Text(
                          'Iniciar Sesion',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      EmailInput(),
                      SizedBox(
                        height: 25,
                      ),
                      PasswordInput(),
                      ForgotButton(),
                      ButtonSignUp(),
                      FadeAnimation(
                        1,
                        Text(
                          '- O -',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildSocialButton(() => print('Facebook'),
                                AssetImage('assets/logos/facebook.jpg')),
                            _buildSocialButton(() => print('Google'),
                                AssetImage('assets/logos/google.jpg')),
                          ],
                        ),
                      ),
                      _buildSignInLink(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
