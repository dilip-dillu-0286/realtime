import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String year;
  int financial;
  final charts.Color color;

  BarChartModel(
      {required this.year, required this.financial, required this.color});
}
