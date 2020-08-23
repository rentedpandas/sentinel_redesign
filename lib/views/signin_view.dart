import 'package:flutter/material.dart';
import 'package:sentinel_redesign/views/student/student_home_view.dart';

class SignInView extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/sentinel.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Sentinel',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Color.fromARGB(255, 169, 169, 169),
      /*
      onPressed in method OutlineButton() will require a Firebase connection
      Removed other sign in methods as they are cumbersome.
      */
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StudentHomeView()),
        );  
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Color.fromARGB(255, 169, 169, 169)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blueGrey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}