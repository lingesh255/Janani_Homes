import 'package:flutter/material.dart';

class myDonations extends StatefulWidget {
  @override
  _myDonationsState createState() => _myDonationsState();
}

class _myDonationsState extends State<myDonations> with AutomaticKeepAliveClientMixin<myDonations>{

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}
