import 'package:flutter/material.dart';
import 'package:janani_homes/Homepages/accounts.dart';
import 'package:janani_homes/Homepages/fundraisers.dart';


// ignore: camel_case_types
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}


// ignore: camel_case_types
class _homepageState extends State<homepage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int _currentIndex = 1;

  final tabs = [
    Text("Drawer"),
    fundraisers(),
    accounts(),
  ];

  void _onItemTapped(int index) {
    if (index == 0) {
      _scaffoldKey.currentState.openDrawer();
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            child: ListView(
              children: [
                ExpansionTile(
                  title: Text("Fundraise For"),
                  children: [
                    ListTile(
                      title: Text("Education"),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text("Health"),
                      onTap: () {},
                    ),

                  ],
                ),
                ListTile(
                  title: Text("Volunteers"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Events"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Guidelines"),
                  onTap: () {},
                ),
                Divider(
                ),

              ],
            ),
          ),
          body: tabs[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                title: Text(
                  "Menu",
                  style: TextStyle(color: Colors.black),
                ),
                activeIcon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.whatshot_sharp),
                title: Text(
                  "Fundraisers",
                  style: TextStyle(color: Colors.black),
                ),
                activeIcon: Icon(
                  Icons.whatshot_sharp,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                title: Text(
                  "Account",
                  style: TextStyle(color: Colors.black),
                ),
                activeIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
              ),
            ],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
