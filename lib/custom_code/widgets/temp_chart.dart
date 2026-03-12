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

class TempChart extends StatefulWidget {
  const TempChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<TempChart> createState() => _TempChartState();
}

class _TempChartState extends State<TempChart> {
  final List<FlSpot> spots = [
    FlSpot(2, 37.0),
    FlSpot(3, 36.5),
    FlSpot(5, 36.8),
    FlSpot(8, 37.3),
    FlSpot(11, 37.8),
    FlSpot(13, 38.2),
    FlSpot(17, 36.5),
    FlSpot(18, 36.8),
    FlSpot(21, 36.5),
    FlSpot(23, 37.1),
    FlSpot(24, 37.2),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // กราฟที่เลื่อนได้
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 1400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16), // เว้นข้างละ 16px
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 24,
                      minY: 35,
                      maxY: 39,
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: false,
                        horizontalInterval: 1,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: Colors.grey.withOpacity(0.1),
                          strokeWidth: 0.5,
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            reservedSize: 32,
                            getTitlesWidget: (value, _) => Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text(
                                '${value.toInt()}:00',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      lineBarsData: _buildColoredLineBars(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // แกน Y คงที่ ด้านขวา
          Container(
            padding: const EdgeInsets.only(
              bottom: 24, // เว้นระยะด้านล่าง
              left: 8.0, // เว้นระยะด้านซ้าย
              right: 8.0, // เว้นระยะด้านขวา
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                final yValue = 39 - index; // 39 -> 36
                return Padding(
                  padding: const EdgeInsets.only(left: 4), // ระยะห่างจากกราฟ
                  child: Text(
                    '$yValue',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  List<LineChartBarData> _buildColoredLineBars() {
    List<LineChartBarData> lines = [];

    for (int i = 0; i < spots.length - 1; i++) {
      final start = spots[i];
      final end = spots[i + 1];
      final double avgTemp = (start.y + end.y) / 2;

      Color color = avgTemp < 37.0 ? Colors.green : Colors.red;

      lines.add(LineChartBarData(
        spots: [start, end],
        isCurved: true,
        curveSmoothness: 0.5,
        barWidth: 3,
        color: color,
        dotData: FlDotData(
          show: true,
          getDotPainter: (spot, percent, bar, index) {
            return FlDotCirclePainter(
              radius: 3,
              color: _getDotColor(spot.y),
            );
          },
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.1),
              color.withOpacity(0.01),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ));
    }

    return lines;
  }

  Color _getDotColor(double temp) {
    return temp < 37.0 ? Colors.green : Colors.red;
  }
}
