import 'package:flutter/material.dart';
import 'package:realtime/constans.dart';
import 'package:realtime/sidemenu.dart';

class addpaintient extends StatefulWidget {
  const addpaintient({super.key});

  @override
  State<addpaintient> createState() => _addpaintientState();
}

class _addpaintientState extends State<addpaintient> {
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add patient",
                          style: TextStyle(color: Colors.blue),
                        ),
                        Container(
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.download,
                                  size: 14,
                                ),
                                Text(
                                  "  Download report",
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.telegram,
                                  size: 14,
                                ),
                                Text(
                                  "  send report",
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 80,
                    child: Card(
                        color: secondaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Basic information"),
                                  Text(
                                    "Description text here..",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 350,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Patienet ID",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 350,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "First Name",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 350,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Last Name",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Phone number",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 880,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Adress",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 210,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Doctor Name",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 950,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Hospital Name",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [Text("Personal information")],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              suffixIcon: Icon(Icons
                                                  .arrow_drop_down_outlined),
                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Male",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 280,
                                        child: TextField(
                                          decoration: InputDecoration(

                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Date of Birth",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 280,
                                        child: TextField(
                                          decoration: InputDecoration(

                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Aadhar",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 280,
                                        child: TextField(
                                          decoration: InputDecoration(

                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "PAN",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 380,
                                        child: TextField(
                                          decoration: InputDecoration(

                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Blood Group",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 380,
                                        child: TextField(
                                          decoration: InputDecoration(

                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Medical Condition",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 380,
                                        child: TextField(
                                          decoration: InputDecoration(

                                              // fillColor: bgColor,
                                              // filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              hintText: "Report",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Text("social Media information")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
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
