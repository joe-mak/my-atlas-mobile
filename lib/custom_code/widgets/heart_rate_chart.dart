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

class HeartRateChart extends StatefulWidget {
  const HeartRateChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<HeartRateChart> createState() => _HeartRateChartState();
}

class _HeartRateChartState extends State<HeartRateChart> {
  final List<FlSpot> heartRateData = [
    FlSpot(0, 72),
    FlSpot(0.5, 85),
    FlSpot(1, 95),
    FlSpot(1.5, 105),
    FlSpot(2, 110),
    FlSpot(2.5, 120),
    FlSpot(3, 115),
    FlSpot(3.5, 110),
    FlSpot(4, 100),
    FlSpot(4.5, 92),
    FlSpot(5, 85),
    FlSpot(5.5, 95),
    FlSpot(6, 80),
    FlSpot(6.5, 70),
    FlSpot(7, 65),
    FlSpot(7.5, 72),
    FlSpot(8, 82),
    FlSpot(8.5, 90),
    FlSpot(9, 105),
    FlSpot(9.5, 110),
    FlSpot(10, 95),
    FlSpot(10.5, 85),
    FlSpot(11, 78),
    FlSpot(11.5, 80),
    FlSpot(12, 85),
    FlSpot(12.5, 90),
    FlSpot(13, 95),
    FlSpot(13.5, 92),
    FlSpot(14, 100),
    FlSpot(14.5, 105),
    FlSpot(15, 110),
    FlSpot(16, 115),
    FlSpot(17, 120),
    FlSpot(17.5, 110),
    FlSpot(18, 105),
    FlSpot(19, 100),
    FlSpot(19.5, 95),
    FlSpot(20, 90),
    FlSpot(21, 85),
    FlSpot(22, 80),
    FlSpot(23, 75),
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
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: SizedBox(
                  width: 1400,
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 24,
                      minY: 50,
                      maxY: 130,
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
                          spots: heartRateData,
                          isCurved: false,
                          barWidth: 2,
                          color: const Color(0xFFE91E63),
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFE91E63).withOpacity(0.1),
                                const Color(0xFFE91E63).withOpacity(0.01),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) {
                              return FlDotCirclePainter(
                                radius: 3,
                                color: Colors.white, // สีขาวด้านใน
                                strokeWidth: 0.5,
                                strokeColor: const Color(
                                    0xFFE91E63), // ขอบสีเดียวกับเส้น
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 8.0, right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) {
                final value = 120 - (index * 15); // ช่วง 120-60
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
