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

class CGMsecondChart extends StatefulWidget {
  const CGMsecondChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CGMsecondChart> createState() => _CGMsecondChartState();
}

class _CGMsecondChartState extends State<CGMsecondChart> {
  // ✅ ใช้ค่าบวกแทนค่าลบ
  final List<FlSpot> spots = [
    FlSpot(8.5, -90),
    FlSpot(9.0, -93),
    FlSpot(9.5, -92),
    FlSpot(10.0, -100),
    FlSpot(10.5, -77),
    FlSpot(11.0, -89),
    FlSpot(11.5, -90),
    FlSpot(12.0, -95),
    FlSpot(12.5, -120),
  ];

  // ✅ ปรับแกน X/Y ให้เรียงถูกต้อง
  final double _minX = 8.5;
  final double _maxX = 12.5;
  final double _minY = 0;
  final double _maxY = -180;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ กราฟเลื่อนได้
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 800,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: LineChart(
                    LineChartData(
                      minX: _minX,
                      maxX: _maxX,
                      minY: _minY,
                      maxY: _maxY,
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        verticalInterval: 0.5,
                        horizontalInterval: 30,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: Colors.grey.withOpacity(0.1),
                          strokeWidth: 0.5,
                        ),
                        getDrawingVerticalLine: (value) => FlLine(
                          color: Colors.grey.withOpacity(0.08),
                          strokeWidth: 0.5,
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 0.5,
                            reservedSize: 36,
                            getTitlesWidget: (value, meta) => Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text(
                                _formatTimeLabel(value),
                                style: const TextStyle(
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

          // ✅ แกน Y คงที่ด้านขวา
          Container(
            padding: const EdgeInsets.only(
              bottom: 24,
              left: 8.0,
              right: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                final step = (_maxY - _minY) / 3;
                final yValue = (_maxY - (step * index)).toInt();
                return Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    '$yValue',
                    style: const TextStyle(color: Colors.black, fontSize: 10),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  // ✅ สีตามระดับน้ำตาลจริง
  Color _getGlucoseColor(double value) {
    final v = value.abs(); // เพราะค่าในกราฟเป็นลบ
    if (v >= 70 && v <= 100) {
      return Colors.green; // ปกติ
    } else if (v > 100 && v <= 125) {
      return Colors.orange; // เสี่ยง (เบาหวานแฝง)
    } else if (v > 125) {
      return Colors.red; // เสี่ยงเบาหวาน
    } else {
      return Colors.grey; // ต่ำเกินไป
    }
  }

  // ✅ แสดงสีของเส้นแต่ละช่วงตามค่าเฉลี่ยของ 2 จุด
  List<LineChartBarData> _buildColoredLineBars() {
    List<LineChartBarData> lines = [];

    for (int i = 0; i < spots.length - 1; i++) {
      final start = spots[i];
      final end = spots[i + 1];
      final double avg = (start.y + end.y) / 2;
      final color = _getGlucoseColor(avg);

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
              color: _getGlucoseColor(spot.y),
            );
          },
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.15),
              color.withOpacity(0.02),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ));
    }

    return lines;
  }

  // ✅ แปลงค่าแกน X เป็นเวลา
  String _formatTimeLabel(double value) {
    int hour = value.floor();
    int minute = (value - hour) == 0.5 ? 30 : 0;
    final hh = hour.toString().padLeft(2, '0');
    final mm = minute.toString().padLeft(2, '0');
    return '$hh:$mm';
  }
}
