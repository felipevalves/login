import 'package:flutter/material.dart';
import 'package:login/sign_in.dart';

import 'WelcomeScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState()=> _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        color: Colors.white,
        child: Center (
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150),
              SizedBox(height: 50,),
              _signButton()
            ],
          ),
        ),
      ),
    );
  }

  _signButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: (){
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return WelcomeScreen();
                }
              )
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('images/google_logo.png'), height: 35.0,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Google',
              style: TextStyle (
                fontSize: 20,
                color: Colors.grey
              ),
            ),
          )
        ],
      ),
    );
  }
}