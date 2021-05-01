import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:janani_homes/Account/myAccount.dart';
import 'package:janani_homes/Account/myFundraisers.dart';
import 'package:janani_homes/Account/myDonations.dart';


class accounts extends StatefulWidget {
  @override
  _accountsState createState() => _accountsState();
}

class _accountsState extends State<accounts> with TickerProviderStateMixin{




  @override
  Widget build(BuildContext context) {

    return new DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                flexibleSpace: SizedBox(
                  height: 70,
                  child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Image(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                        Image(
                          image: AssetImage('assets/images/jhtext.png'),
                        ),
                      ],
                      ),
                ),
                bottom: TabBar(

                  indicatorColor: Colors.black54,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.normal
                  ),

                  tabs: [
                    Container(
                        height: 40,
                        child: Center(
                          child: Text("Accounts",
                            style: TextStyle(
                                color: Colors.black54,
                              //fontWeight: FontWeight.bold
                            ),),
                        )
                    ),
                    Container(
                      height: 40,
                      child: Center(
                        child: Text("Fundraisers",
                        style: TextStyle(
                          color: Colors.black54,
                            //fontWeight: FontWeight.bold
                        ),),
                      )
                    ),
              Container(
                  height: 40,
                  child: Center(
                    child: Text("Donations",
                      style: TextStyle(
                          color: Colors.black54,
                          //fontWeight: FontWeight.bold
                      ),),
                  )
              ),
              ]

                ),

              ),
            body: TabBarView(

              children: [
                myAccount(),
                myFundraisers(),
                myDonations()
              ],
            ),
            ),
          ),

    );


  }
}
