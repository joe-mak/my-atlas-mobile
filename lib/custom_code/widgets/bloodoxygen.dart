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
import 'dart:math';

class Bloodoxygen extends StatefulWidget {
  const Bloodoxygen({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Bloodoxygen> createState() => _BloodoxygenState();
}

class _BloodoxygenState extends State<Bloodoxygen> {
  final List<FlSpot> oxygenData = [
    FlSpot(0, 98), // 00:00 - 98% SpO2
    FlSpot(1, 97), // 01:00 - 97% SpO2
    FlSpot(2, 90), // 02:00 - 96% SpO2
    FlSpot(3, 95), // 03:00 - 95% SpO2
    FlSpot(4, 85), // 04:00 - 94% SpO2
    FlSpot(5, 96), // 05:00 - 96% SpO2
    FlSpot(6, 87), // 06:00 - 97% SpO2
    FlSpot(7, 98), // 07:00 - 98% SpO2
    FlSpot(8, 99), // 08:00 - 99% SpO2
    FlSpot(9, 95), // 09:00 - 100% SpO2
    FlSpot(10, 80), // 10:00 - 99% SpO2
    FlSpot(11, 98), // 11:00 - 98% SpO2
    FlSpot(12, 82), // 12:00 - 97% SpO2
    FlSpot(13, 96), // 13:00 - 96% SpO2
    FlSpot(14, 84), // 14:00 - 95% SpO2
    FlSpot(15, 96), // 15:00 - 96% SpO2
    FlSpot(16, 90), // 16:00 - 97% SpO2
    FlSpot(17, 98), // 17:00 - 98% SpO2
    FlSpot(18, 99), // 18:00 - 99% SpO2
    FlSpot(19, 94), // 19:00 - 100% SpO2
    FlSpot(20, 99), // 20:00 - 99% SpO2
    FlSpot(21, 98), // 21:00 - 98% SpO2
    FlSpot(22, 97), // 22:00 - 97% SpO2
    FlSpot(23, 96), // 23:00 - 96% SpO2
  ];

  @override
  Widget build(BuildContext context) {
    final minY = 90.0; // ตั้งค่าต่ำสุดของ Y แกนเป็น 90%
    final maxY = 100.0; // ตั้งค่าสูงสุดของ Y แกนเป็น 100%

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: Row(
        children: [
          // กราฟที่สามารถเลื่อนแนวนอน
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0), // เว้นห่างจากแกน Y
                child: SizedBox(
                  width: 1400,
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 23, // แสดงตั้งแต่ 00:00 ถึง 23:00
                      minY: minY,
                      maxY: maxY,
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1, // แสดงทุก 1 ชั่วโมง
                            getTitlesWidget: (value, _) {
                              final hour = value.toInt();
                              return Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  '${hour.toString().padLeft(2, '0')}:00', // แสดงเวลาเป็น 00:00, 01:00, ...
                                  style: const TextStyle(fontSize: 10),
                                ),
                              );
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false, // ไม่แสดงค่าบนแกน Y
                          ),
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
                          spots: oxygenData,
                          isCurved: true, // ทำให้เส้นกราฟเป็นเส้นโค้ง
                          color: const Color(0xFF9E4AF5),
                          barWidth: 3,
                          dotData: FlDotData(show: false), // ไม่แสดงจุด
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF9E4AF5).withOpacity(0.1),
                                const Color(0xFF9E4AF5).withOpacity(0.01),
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

          // แกน Y ที่อยู่ด้านขวา (แสดงค่าที่ 100, 95, 90, 85, 80)
          Container(
            padding: const EdgeInsets.only(
              bottom: 16, // เว้นระยะด้านล่าง
              left: 8.0, // เว้นระยะด้านซ้าย
              right: 8.0, // เว้นระยะด้านขวา
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // แสดงค่าจาก 100 ถึง 80 โดยห่าง 5 หน่วย
                for (double yValue = 100; yValue >= 80; yValue -= 5)
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        yValue.toInt().toString(),
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
