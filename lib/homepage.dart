import 'package:flutter/material.dart';
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


    SafeArea(
        child: Center(
      child: Text("Accounts"),
    )),
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
                DrawerHeader(
                  child: Text("Drawer Title"),
                ),

                ListTile(
                  title: Text("Menu 1"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Menu 2"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Menu 3"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Menu 4"),
                  onTap: () {},
                ),
                Divider(
                ),
                ListTile(
                  title: Text("Menu 5"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Menu 6"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Menu 7"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Menu 8"),
                  onTap: () {},
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
