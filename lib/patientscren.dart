import 'package:flutter/material.dart';
import 'package:realtime/addpaintient.dart';
import 'package:realtime/constans.dart';
import 'package:realtime/sidemenu.dart';

import 'recentfiles.dart';

class patientscreen extends StatefulWidget {
  const patientscreen({super.key});

  @override
  State<patientscreen> createState() => _patientscreenState();
}

class _patientscreenState extends State<patientscreen> {
  List<String> patientscreen = [
    "Media",
    "ID",
    "Age",
    "Name",
    "Adress",
    "Number",
    "Last Visit",
    "stastus"
  ];
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 900,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(11)),
                              filled: true,
                              fillColor: bgColor,
                              hintText: "  Search",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  margin: EdgeInsets.only(left: 1),
                                  padding: EdgeInsets.all(10),
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightBlue),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        SizedBox(
                          height: 45,
                          width: 120,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => addpaintient()));
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.blueAccent),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text("Add Patient")),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: patientscreen.length,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50),
                                    child: Text(
                                      patientscreen[index],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                        ),
                      ),
                    ],
                  ),
                  ...List.generate(
                      demorecents.length,
                      (index) => patientlist(
                            image: demorecents[index].image,
                            id: demorecents[index].Id,
                            name: demorecents[index].Name,
                            age: demorecents[index].Age,
                            adress: demorecents[index].Adress,
                            number: demorecents[index].Number,
                            LastVisit: demorecents[index].Lastvist,
                            stastus: demorecents[index].status,
                          )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class patientlist extends StatelessWidget {
  patientlist(
      {this.LastVisit,
      this.adress,
      this.id,
      this.image,
      this.name,
      this.number,
      this.stastus,
      this.age});
  final String? image, id, name, adress, number, LastVisit, stastus, age;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image.toString(),
              height: 40,
              width: 40,
            ),
            Text(id.toString()),
            Text(name.toString()),
            Text(age.toString()),
            Text(adress.toString()),
            Text(number.toString()),
            Text(LastVisit.toString()),
            Text(stastus.toString()),
          ],
        ),
        Divider()
      ],
    );
  }
}
