import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
