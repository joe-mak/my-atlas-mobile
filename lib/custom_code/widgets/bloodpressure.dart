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

class Bloodpressure extends StatefulWidget {
  const Bloodpressure({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Bloodpressure> createState() => _BloodpressureState();
}

class _BloodpressureState extends State<Bloodpressure> {
  final List<FlSpot> systolicData = [
    FlSpot(1, 120),
    FlSpot(3, 111),
    FlSpot(5, 125),
    FlSpot(8, 130),
    FlSpot(10, 120),
    FlSpot(12, 128),
    FlSpot(14, 130),
    FlSpot(16, 122),
    FlSpot(20, 118),
    FlSpot(22, 108),
  ];

  final List<FlSpot> diastolicData = [
    FlSpot(1, 80),
    FlSpot(3, 79),
    FlSpot(5, 82),
    FlSpot(8, 85),
    FlSpot(10, 82),
    FlSpot(12, 83),
    FlSpot(14, 75),
    FlSpot(16, 81),
    FlSpot(20, 79),
    FlSpot(22, 80),
  ];

  String _formatHourLabel(double value) {
    final hour = value.toInt().clamp(0, 24);
    return '$hour:00';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          // กราฟที่เลื่อนได้แนวนอน
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0), // ✅ เว้น padding ซ้าย-ขวา
                child: SizedBox(
                  width: 1400,
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 24,
                      minY: 60,
                      maxY: 140,
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            reservedSize: 20,
                            getTitlesWidget: (value, meta) => Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                _formatHourLabel(value),
                                style: const TextStyle(fontSize: 10),
                              ),
                            ),
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
                          spots: systolicData,
                          isCurved: true,
                          barWidth: 3,
                          color: const Color(0xFFF54A6C),
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFF54A6C).withOpacity(0.1),
                                const Color(0xFFF54A6C).withOpacity(0.01),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) =>
                                FlDotCirclePainter(
                              radius: 3,
                              color: Colors.red,
                              strokeWidth: 0,
                              strokeColor: Colors.transparent,
                            ),
                          ),
                        ),
                        LineChartBarData(
                          spots: diastolicData,
                          isCurved: true,
                          barWidth: 3,
                          color: Colors.blue,
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue.withOpacity(0.1),
                                Colors.blue.withOpacity(0.01),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) =>
                                FlDotCirclePainter(
                              radius: 3,
                              color: Colors.blue,
                              strokeWidth: 0,
                              strokeColor: Colors.transparent,
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

          // ✅ แกน Y ขวาสุด (ตรึงไว้ ไม่เลื่อน)
          Padding(
            padding: const EdgeInsets.only(
              bottom: 24, // เว้นระยะด้านล่าง
              left: 8.0, // เว้นระยะด้านซ้าย
              right: 8.0, // เว้นระยะด้านขวา
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) {
                final value = 140 - (index * 20);
                return Text(
                  '$value',
                  style: const TextStyle(fontSize: 10),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
