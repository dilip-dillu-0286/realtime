import 'package:flutter/material.dart';
import 'package:realtime/constans.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    MediaQuery querydata;
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.teal,
              height: MediaQuery.of(context).size.height * 30 / 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Dilip Kavati",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/myimage.jpeg"),
                    radius: 40,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          right: -12,
                          bottom: 0,
                          child: Container(
                            height: 33,
                            width: 33,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Stack(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/facebook1.png",
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              "images/google.png",
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "images/twitter1.png",
                              height: 30,
                              width: 30,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Occupation",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "UiUx Design",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Email ID",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("dilipkavati28@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("6304458335",
                style: TextStyle(fontSize: 16, color: Colors.white)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Text(
              "Address",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text("15-7-248/1 Ramannapet warngal"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            )
          ],
        ),
      ),
    );
  }
}
