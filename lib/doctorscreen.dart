import 'package:flutter/material.dart';
import 'package:realtime/adddoctor.dart';
import 'package:realtime/constans.dart';
import 'package:realtime/recentfiles.dart';
import 'package:realtime/sidemenu.dart';
import 'recentfiles.dart';

class doctorscreen extends StatefulWidget {
  const doctorscreen({super.key});

  @override
  State<doctorscreen> createState() => _doctorscreenState();
}

class _doctorscreenState extends State<doctorscreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Row(
        children: [
          SideMenu(),
          Container(
              color: Colors.grey.withOpacity(0.1),
              width: MediaQuery.of(context).size.width * 80 / 100,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
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
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => adddoctor()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blueAccent),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: Text("Add Doctor")),
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: DataTable(columns: [
                      DataColumn(
                        label: Text(
                          "ID",
                          style: TextStyle(),
                        ),
                      ),
                      DataColumn(
                        label: Text("Name"),
                      ),
                      DataColumn(
                        label: Text("Age"),
                      ),
                      DataColumn(label: Text("Address")),
                      DataColumn(
                        label: Text("Number"),
                      ),
                      DataColumn(
                        label: Text("Last Visit"),
                      ),
                      DataColumn(
                        label: Text("status"),
                      ),
                    ], rows: [
                      ...List.generate(demorecents.length,
                          (index) => recentfiledata(demorecents[index]))
                    ]),
                  )
                ],
              ))
        ],
      ),
    );
  }

  DataRow recentfiledata(recentfile fileinfo) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          Image.asset(
            fileinfo.image.toString(),
            height: 30,
            width: 30,
          ),
          // Text(fileinfo.Id.toString()),
          // Text(fileinfo.Name.toString()),
          // Text(fileinfo.Age.toString()),
          // Text(fileinfo.Number.toString()),
          // Text(fileinfo.Lastvist.toString()),
          // // Text(fileinfo.Lastvist.toString()),
          // Text(fileinfo.status.toString())
        ],
      )),
      DataCell(Text(fileinfo.Id.toString())),
      DataCell(Text(fileinfo.Name.toString())),
      DataCell(Text(fileinfo.Age.toString())),
      DataCell(Text(fileinfo.Adress.toString())),
      DataCell(Text(fileinfo.Lastvist.toString())),
      DataCell(Text(fileinfo.status.toString())),
    ]);
  }
}
