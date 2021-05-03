import 'package:flutter/material.dart';
import 'package:janani_homes/homepage.dart';

class myDonations extends StatefulWidget {
  @override
  _myDonationsState createState() => _myDonationsState();
}

class _myDonationsState extends State<myDonations> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Donations",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black54),
                          ),
                          Text(
                            "Your Donations",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black12),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.black54,
                            ),
                            Text(
                              "Donate",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => homepage()));
                        },
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      height: 40,
                      child: TextField(
                          cursorColor: Colors.black45,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.black45,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  // width: 0.0 produces a thin "hairline" border
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black45),
                              hintText: "Search...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              contentPadding: EdgeInsets.all(8))),
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:20,
                itemBuilder: (context,index){
                  return   InkWell(
                    child: ListTile(
                      title: Column(
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Kerala Floods",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54
                                    ),
                                  ),
                                  Text(
                                    "₹30,000 of ₹35,000 raised",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "₹10,000",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: ()
                    {

                      showDialog(
                          context: context,
                          builder: (BuildContext context)
                      {
                        return AlertDialog(
                          insetPadding: EdgeInsets.symmetric(
                              horizontal: queryData.size.width * 0.03,
                              vertical: queryData.size.height * 0.275),
                          content: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ID: 4788094412768789",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                          ),
                                        ),
                                        Text(
                                          "Donation Made",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold
                                          )
                                        )
                                      ],
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.black54,

                                      ),
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                                    child: RichText(

                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "The following details are for reference purposes only. For queries contact ",
                                            style: TextStyle(
                                              color: Colors.black54
                                            )
                                          ),
                                          TextSpan(
                                            text: "Support.",
                                            style: TextStyle(
                                              color: Colors.blue
                                            )
                                          )
                                        ]
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.white10
                                          ),
                                          child: Text(
                                              "₹10,000",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),

                                         Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Donated to help the cause of "',
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 15
                                                    )
                                                  ),
                                                  TextSpan(
                                                    text: 'Kerala Floods"',
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontStyle: FontStyle.italic,
                                                      fontSize: 15
                                                    )
                                                  )
                                                ]
                                              ),
                                            ),
                                          ),
                                        ),



                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 5, 4, 5),
                                          child: Icon(
                                              Icons.credit_card,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(4, 5, 4, 5),
                                          child: Text(
                                              "XXXX XXXX XXXX 0987",
                                            style: TextStyle(
                                              color: Colors.black54
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 5, 4, 5),
                                          child: Icon(
                                            Icons.access_time,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(4, 5, 4, 5),
                                          child: Text(
                                            "12 Dec 2021 19:05",
                                            style: TextStyle(
                                              color: Colors.black54
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlatButton(
                                          color: Colors.black12,
                                          shape: RoundedRectangleBorder(

                                              borderRadius: BorderRadius.circular(5)

                                          ),
                                          child: Text(
                                            "Reciept",
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
                                )
                              ],
                            ),
                          ),
                        );
                      }
                      );
                    },
                  );
                },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1,
                );
              },
            )


          ],
        ),
      ),
    );
  }
}
