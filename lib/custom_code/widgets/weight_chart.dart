// Automatic FlutterFlow imports
import "package:u_i_library_3c2hbt/backend/schema/structs/index.dart"
    as u_i_library_3c2hbt_data_schema;
import "package:u_i_library_3c2hbt/backend/schema/enums/enums.dart"
    as u_i_library_3c2hbt_enums;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class WeightChart extends StatefulWidget {
  const WeightChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<WeightChart> createState() => _WeightChartState();
}

class _WeightChartState extends State<WeightChart> {
  final List<Map<String, dynamic>> weightData = [
    {'date': DateTime(2025, 5, 3), 'weight': 60.5},
    {'date': DateTime(2025, 5, 4), 'weight': 60.2},
    {'date': DateTime(2025, 5, 6), 'weight': 60.8},
    {'date': DateTime(2025, 5, 7), 'weight': 60.4},
    {'date': DateTime(2025, 5, 9), 'weight': 60.1},
  ];

  @override
  Widget build(BuildContext context) {
    // Prepare data for chart
    final spots = List.generate(
      weightData.length,
      (i) => FlSpot(i.toDouble(), weightData[i]['weight']),
    );

    final minWeight = weightData.map((e) => e['weight'] as double).reduce(min);
    final maxWeight = weightData.map((e) => e['weight'] as double).reduce(max);

    final minY = (minWeight - 1).floorToDouble();
    final maxY = (maxWeight + 1).ceilToDouble();

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: Row(
        children: [
          // Scrollable Graph Section
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0), // เว้นห่างจากแกน Y
                child: SizedBox(
                  width: max(600, weightData.length * 80),
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: (weightData.length - 1).toDouble(),
                      minY: minY,
                      maxY: maxY,
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            getTitlesWidget: (value, _) {
                              final index = value.toInt();
                              if (index < 0 || index >= weightData.length)
                                return const SizedBox();
                              final date =
                                  weightData[index]['date'] as DateTime;
                              return Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  DateFormat('d/MM').format(date),
                                  style: const TextStyle(fontSize: 10),
                                ),
                              );
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: spots,
                          isCurved: true,
                          color: const Color(0xFF1D8B6B),
                          barWidth: 3,
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, _, __, ___) =>
                                FlDotCirclePainter(
                              radius: 4,
                              color: Colors.white,
                              strokeWidth: 2,
                              strokeColor: const Color(0xFF1D8B6B),
                            ),
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF1D8B6B).withOpacity(0.1),
                                const Color(0xFF1D8B6B).withOpacity(0.01),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Fixed Y-Axis on the right with padding
          Container(
            padding: const EdgeInsets.only(
              bottom: 16, // เว้นระยะด้านล่าง
              left: 8.0, // เว้นระยะด้านซ้าย
              right: 8.0, // เว้นระยะด้านขวา
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                ((maxY - minY) + 1).toInt(),
                (i) {
                  final yValue = maxY - i.toDouble(); // บนลงล่าง
                  return Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        yValue.toInt().toString(),
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
