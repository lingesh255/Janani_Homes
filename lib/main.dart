import 'package:flutter/material.dart';
import 'package:janani_homes/signin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
import 'signup.dart';


void main() {
  runApp(new MaterialApp(
    theme: ThemeData(fontFamily: 'SegoeUI'),
      home: new JananiHomes(),

  ));
}

class JananiHomes extends StatefulWidget {

  @override
  _JananiHomesState createState() => _JananiHomesState();
}

class _JananiHomesState extends State<JananiHomes> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
          ElevatedButton(
            child: Text("Sign In",
            style: TextStyle(
              fontFamily: 'SegoeUI'
            ),),
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => signin(),
              ));
            },
          ),

          ElevatedButton(
            child: Text("Sign Up"),
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignUp(),
              ));
            },
          ),
        ]),
      ),
    );
  }
}
