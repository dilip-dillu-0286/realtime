import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:realtime/constans.dart';

import 'package:realtime/profile.dart';
import 'package:realtime/sidemenu.dart';
import 'package:timeline_tile/timeline_tile.dart';

class profileui extends StatefulWidget {
  const profileui({super.key});

  @override
  State<profileui> createState() => _profileuiState();
}

class _profileuiState extends State<profileui> {
  @override
  Widget build(BuildContext context) {
    MediaQuery querydata;
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          SizedBox(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width * 20 / 100,
              child: SideMenu()),
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 30 / 100,
              child: profile()),
          Expanded(
            child: Container(
              color: bgColor,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 30 / 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        child: SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      backgroundColor: MaterialStatePropertyAll(
                                        Colors.teal,
                                      )),
                                  onPressed: () {},
                                  child: Text("Activity")),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      backgroundColor: MaterialStatePropertyAll(
                                        Colors.white,
                                      )),
                                  onPressed: () {},
                                  child: Text(
                                    "Billings",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Text(
                              "it is a long estlblished fact that a leader will be destracted by the readable content of page when\nlookin at its layout.The point of using Lorem ipsum is that has a  more-or-less  normal distribuation\nof letters of letters,as opposed to using 'content here',making it look like readable"),
                          SizedBox(
                            height: 15,
                          ),
                          TimelineTile(
                              indicatorStyle: IndicatorStyle(
                                  color: Colors.green,
                                  iconStyle: IconStyle(
                                      iconData: Icons.done,
                                      color: Colors.white,
                                      fontSize: 15)),
                              beforeLineStyle: LineStyle(thickness: 1),
                              afterLineStyle: LineStyle(thickness: 1),
                              endChild: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Just Now"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Discharge",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    )
                                  ],
                                ),
                              )),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          TimelineTile(
                            isLast: false,
                            indicatorStyle: IndicatorStyle(
                              iconStyle: IconStyle(
                                  iconData: Icons.done,
                                  color: Colors.white,
                                  fontSize: 15),
                              color: Colors.orange,
                            ),
                            beforeLineStyle: LineStyle(thickness: 1),
                            afterLineStyle: LineStyle(thickness: 1),
                            endChild: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 175),
                                  Text(
                                      " 02 june 2020\nspinal osteomyelitist surgery"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Dr chandler Bing,",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "web by far white thats mock-ips and this is politicis ,are they really so differnt?i think the\nonly caed she is Lorem card."),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "images/man.png",
                                              ),
                                            ),
                                            color: Colors.grey,
                                            border: Border.all(
                                                color: Colors.white, width: 3),
                                            shape: BoxShape.circle),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 38),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/man1.png")),
                                              border: Border.all(
                                                width: 3,
                                                color: Colors.white,
                                              ),
                                              color: Colors.grey,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 70),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/girl.png")),
                                              border: Border.all(
                                                width: 3,
                                                color: Colors.white,
                                              ),
                                              color: Colors.grey,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
