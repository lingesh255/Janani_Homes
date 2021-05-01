import 'package:flutter/material.dart';

class myAccount extends StatefulWidget {
  @override
  _myAccountState createState() => _myAccountState();
}

class _myAccountState extends State<myAccount> with AutomaticKeepAliveClientMixin<myAccount>{

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
