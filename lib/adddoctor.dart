import 'package:flutter/material.dart';
import 'package:realtime/constans.dart';
import 'package:realtime/sidemenu.dart';

class adddoctor extends StatefulWidget {
  const adddoctor({super.key});

  @override
  State<adddoctor> createState() => _adddoctorState();
}

class _adddoctorState extends State<adddoctor> {
  @override
  Widget build(BuildContext context) {
    MediaQuery querydata;
    MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          SideMenu(),
          Container(
            color: bgColor,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 80 / 100,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              "Add Doctor",
                              style: TextStyle(
                                  color: Colors.greenAccent, fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Doctor /",
                                  style: TextStyle(color: Colors.greenAccent),
                                ),
                                Text(
                                  "Add New",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 780,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              color: Colors.greenAccent,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.download,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text("Download Report"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 30,
                          color: Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text("Add Now Report"),
                          ))
                    ],
                  ),
                  Card(
                    color: secondaryColor,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Basic information"),
                                  Text("Description text here..."),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 520,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          hintText: "Full Name",
                                          fillColor: bgColor,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                          width: 250,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                fillColor: bgColor,
                                                filled: true,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                hintText: "Date of Birth",
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white))),
                                          )),
                                      SizedBox(
                                        width: 22,
                                      ),
                                      SizedBox(
                                          width: 250,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                fillColor: bgColor,
                                                filled: true,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                hintText: "-Gender-",
                                                suffixIcon: Icon(Icons
                                                    .arrow_drop_down_sharp),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white))),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 520,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          hintText: "Enter Your  Email",
                                          fillColor: bgColor,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 518,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          hintText: "Last Name",
                                          fillColor: bgColor,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                          width: 250,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                fillColor: bgColor,
                                                filled: true,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                hintText: "Speciality",
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white))),
                                          )),
                                      SizedBox(
                                        width: 22,
                                      ),
                                      SizedBox(
                                          width: 250,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                fillColor: bgColor,
                                                filled: true,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                hintText: "Phone",
                                                suffixIcon: Icon(Icons.phone),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white))),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 520,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          hintText: "Enter Your  Email",
                                          fillColor: bgColor,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
