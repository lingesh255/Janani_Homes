

import 'package:flutter/cupertino.dart';
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
    final _myAccountKey = GlobalKey<FormState>();

    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Account",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    Text(
                      "Find Fundraisers based on the following catogories",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: Colors.black54,
                            size: 125,

                          )
                        ],
                      ),
                      TextButton(
                        child: Text(
                          "Change",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                          ),
                        ),
                        onPressed: ()
                        {

                        },
                      )

                    ],
                  ),
                ),
                Form(
                  key: _myAccountKey  ,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Container(
                                height: 40,
                                child:
                                TextFormField(
                                  initialValue: "John Smith",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                    decoration: InputDecoration(

                                      contentPadding: EdgeInsets.all(8),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      enabledBorder:  OutlineInputBorder(

                                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.black, width: 1),
                                          borderRadius: BorderRadius.circular(5)
                                      ),

                                    )

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Container(
                                height: 40,
                                child:
                                TextFormField(
                                  initialValue: "johnsmith@test.com",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                    decoration: InputDecoration(

                                      contentPadding: EdgeInsets.all(8),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      enabledBorder:  OutlineInputBorder(

                                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.black, width: 1),
                                          borderRadius: BorderRadius.circular(5)
                                      ),

                                    )

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Container(
                                height: 40,
                                child:
                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                    initialValue: "John Smith",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                    ),
                                    decoration: InputDecoration(

                                      contentPadding: EdgeInsets.all(8),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      enabledBorder:  OutlineInputBorder(

                                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.black, width: 1),
                                          borderRadius: BorderRadius.circular(5)
                                      ),

                                    )

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Additional Details",
                              style: TextStyle(
                                color: Colors.black54
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                                    child: Container(
                                      height: 40,
                                      child:
                                      TextFormField(
                                        keyboardType: TextInputType.number,
                                          initialValue: "9876543210",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold
                                          ),

                                          decoration: InputDecoration(

                                            contentPadding: EdgeInsets.all(8),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            enabledBorder:  OutlineInputBorder(

                                                borderSide: const BorderSide(color: Colors.grey, width: 1),
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.black, width: 1),
                                                borderRadius: BorderRadius.circular(5)
                                            ),

                                          )

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Address",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                                    child: Container(
                                      height: 100,
                                      child:
                                      TextFormField(
                                        minLines: 3,
                                          maxLines: 3,
                                          initialValue: "Initial Address value",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold
                                          ),
                                          decoration: InputDecoration(

                                            contentPadding: EdgeInsets.all(8),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            enabledBorder:  OutlineInputBorder(

                                                borderSide: const BorderSide(color: Colors.grey, width: 1),
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.black, width: 1),
                                                borderRadius: BorderRadius.circular(5)
                                            ),

                                          )

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.black54,
                                      width: 0.5

                                    ),
                                    borderRadius: BorderRadius.circular(5)


                                  ),
                                  child: Text(
                                        "Update",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54
                                    ),
                                  ),

                                  onPressed: ()
                                    {

                                    },
                                )
                              ],
                            )
                          ],
                        ),
                      )


                    ],
                  )
                ),
            






                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
