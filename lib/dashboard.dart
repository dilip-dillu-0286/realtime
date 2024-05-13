import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:realtime/constans.dart';
import 'package:realtime/sidemenu.dart';
import 'constans.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'bargraph.dart';

class dashboard extends StatelessWidget {
  dashboard({Key? key}) : super(key: key);
  final List<BarChartModel> data = [
    BarChartModel(
        year: "Aug 01",
        financial: 250,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 02",
        financial: 750,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 03",
        financial: 850,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 04",
        financial: 450,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 05",
        financial: 350,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 06",
        financial: 300,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 07",
        financial: 150,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 08",
        financial: 800,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 09",
        financial: 420,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 10",
        financial: 640,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 11",
        financial: 350,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    BarChartModel(
        year: "Aug 12",
        financial: 750,
        color: charts.ColorUtil.fromDartColor(Colors.lightBlue))
  ];

  @override

  // Widget build(BuildContext context) {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    List<charts.Series<BarChartModel, String>> Series = [
      charts.Series(
          id: "financial",
          data: data,
          domainFn: (BarChartModel series, _) => series.year,
          measureFn: (BarChartModel series, _) => series.financial,
          colorFn: (BarChartModel series, _) => series.color)
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            SideMenu(),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 80 / 100,
              child: Container(
                color: bgColor,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            "Dashboard",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "search",
                                    suffixIcon: Container(
                                      padding:
                                          EdgeInsets.all(defaultPadding * 0.65),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 6),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                    fillColor: secondaryColor,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: defaultPadding),
                            padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding,
                              vertical: defaultPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "images/myimage.jpeg",
                                  height: 28,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text("Dilip kavati"),
                                ),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(21),
                            child: Column(
                              children: [
                                Container(
                                  height: 125,
                                  width: 270,
                                  color: secondaryColor,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(21),
                                        child: Column(
                                          children: [
                                            Text(
                                              "TOTAL PATIENTS ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 85),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "3251",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "13%",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Text("Analytics for last week")
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white54,
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 125,
                                  width: 270,
                                  color: secondaryColor,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(21),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "SUEGERY",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "24",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text("8.2%"),
                                              ],
                                            ),
                                            Text("Analytics for last week")
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white54,
                                              shape: BoxShape.circle),
                                          child: Icon(Icons.health_and_safety),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 125,
                                  width: 270,
                                  color: secondaryColor,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(21),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "TOTAL VISITORS",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "351",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text("6.2%"),
                                              ],
                                            ),
                                            Text("Analytics for last week")
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white54,
                                              shape: BoxShape.circle),
                                          child: Icon(
                                              Icons.remove_red_eye_rounded),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 125,
                                  width: 270,
                                  color: secondaryColor,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(21),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HAPPY CLIENTS",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "780",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text("8.2%"),
                                              ],
                                            ),
                                            Text("Analytics for last week")
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white54,
                                              shape: BoxShape.circle),
                                          child: Icon(Icons.health_and_safety),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 400),
                            child: Column(
                              children: [
                                Text(
                                  "Total Revenue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.lightGreen,
                                      height: 125,
                                      width: 275,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.wallet,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "7,12,3265\$",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "operational income",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 125,
                                      width: 275,
                                      color: Colors.blueAccent,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.wallet,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "25,965\$",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "pharmacy income",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 125,
                                      width: 275,
                                      color: Colors.red,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.wallet,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "25,965\$",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "pharmacy income",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                // SizedBox(
                                //   height: 30,
                                // ),
                                SizedBox(
                                  height: defaultPadding,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 340,
                                  width: 807,
                                  color: Color(0xffF8F0E5),
                                  child: charts.BarChart(
                                    Series,
                                    behaviors: [
                                      charts.ChartTitle("Operation"),
                                      charts.ChartTitle("Pharmacy    Operation")
                                    ],
                                    animate: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
