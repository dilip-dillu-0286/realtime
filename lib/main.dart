import 'package:flutter/material.dart';
import 'package:realtime/adddoctor.dart';
import 'package:realtime/addpaintient.dart';
import 'package:realtime/dashboaed_screen.dart';
import 'package:realtime/dashboard.dart';
import 'package:realtime/doctorscreen.dart';
import 'package:realtime/drawer.dart';
import 'package:realtime/patientscren.dart';
import 'package:realtime/profile.dart';
import 'package:realtime/profileui.dart';
import 'package:realtime/sidemenu.dart';
import 'constans.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
        home: dashboard());
  }
}
