import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class fundraisers extends StatefulWidget {
  @override
  _fundraisersState createState() => _fundraisersState();
}

class _fundraisersState extends State<fundraisers> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 70,
            elevation: 8,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Row(
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
            forceElevated: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    color: Colors.black12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Start a Change",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              "Pefdafaiy asdasna mvosvdvo uenni sdnsfi ahsda avcu emcioo asdc ahusdsk  sadbskck",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ),
                        RaisedButton(
                          color: Colors.yellow,
                          child: Text(
                            "Start a Fundraiser",
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Fundraisers",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54)),
                                Text(
                                  "Find Fundraisers based on the following categories",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: ConstrainedBox(
                              constraints:
                                  BoxConstraints(maxWidth: double.infinity),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black12),
                                      height: 150,
                                      width: 250,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black12),
                                      height: 150,
                                      width: 250,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black12),
                                      height: 150,
                                      width: 250,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black12),
                                      height: 150,
                                      width: 250,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black12),
                                      height: 150,
                                      width: 250,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black12),
                                      height: 150,
                                      width: 250,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Trending Fundraisers",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54)),
                                Text(
                                  "These are the most active fundraisers",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: (itemWidth / itemHeight)),
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: itemHeight * 0.50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black12),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                    height: itemHeight * 0.08,
                                    width: itemWidth * 0.18,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: Colors.black54,
                                          size: 10,
                                        ),
                                        Text(
                                          "1.2k",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kerala flood relief act",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: 13,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Text(
                              "₹7,500/₹10,000",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          LinearPercentIndicator(
                            width: itemWidth*0.9,
                            lineHeight: 4,
                            progressColor: Colors.green,
                            percent: 0.75,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black26,
                                  size: 13,
                                ),
                                Text(
                                  "John Smith",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    child: Container(
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: itemHeight * 0.50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black12),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                    height: itemHeight * 0.08,
                                    width: itemWidth * 0.18,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: Colors.black54,
                                          size: 10,
                                        ),
                                        Text(
                                          "1.2k",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kerala flood relief act",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: 13,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Text(
                              "₹7,500/₹10,000",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          LinearPercentIndicator(
                            width: itemWidth*0.9,
                            lineHeight: 4,
                            progressColor: Colors.green,
                            percent: 0.75,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black26,
                                  size: 13,
                                ),
                                Text(
                                  "John Smith",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    child: Container(
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: itemHeight * 0.50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black12),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                    height: itemHeight * 0.08,
                                    width: itemWidth * 0.18,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: Colors.black54,
                                          size: 10,
                                        ),
                                        Text(
                                          "1.2k",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kerala flood relief act",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: 13,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Text(
                              "₹7,500/₹10,000",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          LinearPercentIndicator(
                            width: itemWidth*0.9,
                            lineHeight: 4,
                            progressColor: Colors.green,
                            percent: 0.75,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black26,
                                  size: 13,
                                ),
                                Text(
                                  "John Smith",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    child: Container(
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: itemHeight * 0.50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black12),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                    height: itemHeight * 0.08,
                                    width: itemWidth * 0.18,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: Colors.black54,
                                          size: 10,
                                        ),
                                        Text(
                                          "1.2k",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kerala flood relief act",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: 13,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Text(
                              "₹7,500/₹10,000",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          LinearPercentIndicator(
                            width: itemWidth*0.9,
                            lineHeight: 4,
                            progressColor: Colors.green,
                            percent: 0.75,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black26,
                                  size: 13,
                                ),
                                Text(
                                  "John Smith",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    child: Container(
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: itemHeight * 0.50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black12),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                    height: itemHeight * 0.08,
                                    width: itemWidth * 0.18,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: Colors.black54,
                                          size: 10,
                                        ),
                                        Text(
                                          "1.2k",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kerala flood relief act",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: 13,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Text(
                              "₹7,500/₹10,000",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          LinearPercentIndicator(
                            width: itemWidth*0.9,
                            lineHeight: 4,
                            progressColor: Colors.green,
                            percent: 0.75,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black26,
                                  size: 13,
                                ),
                                Text(
                                  "John Smith",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    child: Container(
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: itemHeight * 0.50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black12),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                    height: itemHeight * 0.08,
                                    width: itemWidth * 0.18,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: Colors.black54,
                                          size: 10,
                                        ),
                                        Text(
                                          "1.2k",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kerala flood relief act",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: 13,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Text(
                              "₹7,500/₹10,000",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          LinearPercentIndicator(
                            width: itemWidth*0.9,
                            lineHeight: 4,
                            progressColor: Colors.green,
                            percent: 0.75,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black26,
                                  size: 13,
                                ),
                                Text(
                                  "John Smith",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),


              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Success Stories",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Be Inspired.",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CarouselSlider(
                            items: [
                              InkWell(
                                child: Container(
                                  width: 250,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 5),
                                        child: Text(
                                          "Title 01",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet,idunt ut labore et dolore magna aliqua.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {},
                              ),
                              InkWell(
                                child: Container(
                                  width: 250,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 5),
                                        child: Text(
                                          "Title 02",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet,idunt ut labore et dolore magna aliqua.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {},
                              ),
                              InkWell(
                                child: Container(
                                  width: 250,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 5),
                                        child: Text(
                                          "Title 03",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet,idunt ut labore et dolore magna aliqua.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {},
                              ),
                              InkWell(
                                child: Container(
                                  width: 250,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 5),
                                        child: Text(
                                          "Title 04",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet,idunt ut labore et dolore magna aliqua.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ],
                            options: CarouselOptions(
                              height: 240,
                              viewportFraction: 0.75,
                              autoPlay: true,
                              autoPlayCurve: Curves.decelerate,
                              enlargeCenterPage: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}