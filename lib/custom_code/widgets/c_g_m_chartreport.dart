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

class CGMChartreport extends StatefulWidget {
  const CGMChartreport({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CGMChartreport> createState() => _CGMChartreportState();
}

class _CGMChartreportState extends State<CGMChartreport> {
  // ✅ ใช้เวลา 4.0 - 24.0 (ไม่ใช้ 00.0)
  final List<FlSpot> spots = [
    FlSpot(4.0, -90),
    FlSpot(4.5, -110),
    FlSpot(5.0, -125),
    FlSpot(5.5, -130),
    FlSpot(6.0, -150),
    FlSpot(6.5, -100),
    FlSpot(7.0, -85),
    FlSpot(7.5, -95),
    FlSpot(8.0, -120),
    FlSpot(8.5, -90),
    FlSpot(9.0, -93),
    FlSpot(9.5, -92),
    FlSpot(10.0, -100),
    FlSpot(10.5, -77),
    FlSpot(11.0, -89),
    FlSpot(11.5, -90),
    FlSpot(12.0, -95),
    FlSpot(12.5, -120),
    FlSpot(13.0, -88),
    FlSpot(13.5, -88),
    FlSpot(14.0, -88),
    FlSpot(14.5, -89),
    FlSpot(15.0, -78),
    FlSpot(15.5, -90),
    FlSpot(16.0, -98),
    FlSpot(16.5, -120),
    FlSpot(17.0, -121),
    FlSpot(17.5, -122),
    FlSpot(18.0, -116),
    FlSpot(18.5, -90),
    FlSpot(19.0, -89),
    FlSpot(19.5, -93),
    FlSpot(20.0, -97),
    FlSpot(20.5, -100),
    FlSpot(21.0, -124),
    FlSpot(21.5, -111),
    FlSpot(22.0, -115),
    FlSpot(22.5, -108),
    FlSpot(23.0, -99),
    FlSpot(23.5, -79),
    FlSpot(24.0, -88), // ✅ แทน 00.0 ด้วย 24.0
    FlSpot(24.5, -89), // ✅ แทน 00.5 ด้วย 24.5
  ];

  // ✅ ปรับช่วงเวลาใหม่ให้ครอบคลุม 04:00 - 24:30
  final double _minX = 4.0;
  final double _maxX = 24.5;

  // ✅ ปรับแกน Y ให้ค่าบวก (ไม่ควรใช้ค่าลบ)
  final double _minY = 0;
  final double _maxY = 180;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 800,
      height: widget.height ?? 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ ส่วนกราฟ
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 1600, // ✅ เพิ่มความกว้างให้ scroll ได้ยาวขึ้น
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
                          color: Colors.grey.withOpacity(0.05), // ✅ เทาอ่อนมาก
                          strokeWidth: 0.5,
                        ),
                        getDrawingVerticalLine: (value) => FlLine(
                          color: Colors.grey.withOpacity(0.04), // ✅ เทาอ่อนมาก
                          strokeWidth: 0.5,
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1.0, // ✅ แสดงทุกชั่วโมง
                            reservedSize: 36,
                            getTitlesWidget: (value, meta) => Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text(
                                _formatTimeLabel(value),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
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

          // ✅ แกน Y ด้านขวา
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

  // ✅ สีตามระดับน้ำตาล
  Color _getGlucoseColor(double value) {
    final v = value.abs();
    if (v >= 70 && v <= 100) {
      return Colors.green;
    } else if (v > 100 && v <= 125) {
      return Colors.orange;
    } else if (v > 125) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }

  // ✅ วาดเส้นสีตามค่าเฉลี่ย
  List<LineChartBarData> _buildColoredLineBars() {
    List<LineChartBarData> lines = [];
    for (int i = 0; i < spots.length - 1; i++) {
      final start = FlSpot(spots[i].x, spots[i].y.abs());
      final end = FlSpot(spots[i + 1].x, spots[i + 1].y.abs());
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

  // ✅ ฟอร์แมตเวลา 04:00, 05:00, ...
  String _formatTimeLabel(double value) {
    int hour = value.floor();
    int minute = (value - hour) == 0.5 ? 30 : 0;
    if (hour >= 24) hour = 0; // 24:00 → 00:00
    final hh = hour.toString().padLeft(2, '0');
    final mm = minute.toString().padLeft(2, '0');
    return '$hh:$mm';
  }
}
