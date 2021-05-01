import 'package:flutter/material.dart';

import 'package:janani_homes/signin.dart';

import 'Homepages/fundraisers.dart';
import 'signup.dart';
import 'homepage.dart';



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

    return homepage();

  }
}
