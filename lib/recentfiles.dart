import 'package:flutter/material.dart';

class recentfile {
  final String? image, Id, Name, Age, Number, Lastvist, status, Adress;

  recentfile(
      {this.Age,
      this.image,
      this.Id,
      this.Lastvist,
      this.Name,
      this.Number,
      this.status,
      this.Adress});
}

List<recentfile> demorecents = [
  recentfile(
      image: "images/man.png",
      Id: "ku 0050598",
      Name: "Daniel",
      Age: "32",
      Adress: "71pilgrim Avenue chey,MD 20815",
      Number: "404-447-6013",
      Lastvist: "11 jan 2018",
      status: "Approved"),
  recentfile(
      image: "images/man1.png",
      Id: "ku 0050298",
      Name: "Alxender",
      Age: "22",
      Adress: "123 6th st.Melbroune FL 32904",
      Number: "404-447-6013",
      Lastvist: "15 jan 2018",
      status: "Approved"),
  recentfile(
      image: "images/girl.png",
      Id: "ku 0050526",
      Name: "Richyard",
      Age: "32",
      Adress: "123 6th st.Melbroune FL 32904",
      Number: "404-447-6013",
      Lastvist: "16 jan 2018",
      status: "Approved"),
  recentfile(
      image: "images/girl.png",
      Id: "ku 0050536",
      Name: "Richyard",
      Age: "32",
      Adress: "123 6th st.Melbroune FL 32904",
      Number: "404-447-6013",
      Lastvist: "16 jan 2018",
      status: "Approved"),
  recentfile(
      image: "images/girl.png",
      Id: "ku 0050398",
      Name: "Richyard",
      Age: "32",
      Adress: "123 6th st.Melbroune FL 32904",
      Number: "404-447-6013",
      Lastvist: "16 jan 2018",
      status: "Approved"),
  recentfile(
      image: "images/girl.png",
      Id: "ku 0050458",
      Name: "Richyard",
      Age: "32",
      Adress: "123 6th st.Melbroune FL 32904",
      Number: "404-447-6013",
      Lastvist: "16 jan 2018",
      status: "Approved"),
  recentfile(
      image: "images/girl.png",
      Id: "ku 0050452",
      Name: "Richyard",
      Age: "32",
      Adress: "123 6th st.Melbroune FL 32904",
      Number: "404-447-6013",
      Lastvist: "16 jan 2018",
      status: "Approved"),
];
