import 'package:flutter/material.dart';

class myFundraisers extends StatefulWidget {
  @override
  _myFundraisersState createState() => _myFundraisersState();
}

class _myFundraisersState extends State<myFundraisers> with AutomaticKeepAliveClientMixin<myFundraisers>{

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
