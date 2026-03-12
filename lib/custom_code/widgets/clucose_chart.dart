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

class ClucoseChart extends StatefulWidget {
  const ClucoseChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<ClucoseChart> createState() => _ClucoseChartState();
}

class _ClucoseChartState extends State<ClucoseChart> {
  final List<FlSpot> spots = [
    FlSpot(0, 65),
    FlSpot(2, 85),
    FlSpot(3, 90),
    FlSpot(4, 100),
    FlSpot(5, 110),
    FlSpot(8, 100),
    FlSpot(9, 90),
    FlSpot(10, 130),
    FlSpot(12, 50),
    FlSpot(13, 95),
    FlSpot(16, 65),
    FlSpot(18, 90),
    FlSpot(19, 130),
    FlSpot(23, 70),
    FlSpot(24, 65),
  ];

  final double minY = 40;
  final double maxY = 140;
  final double normalMin = 70;
  final double normalMax = 100;

  @override
  Widget build(BuildContext context) {
    final chartHeight = widget.height ?? 300;

    return Container(
      width: widget.width ?? double.infinity,
      height: chartHeight,
      child: Stack(
        children: [
          // พื้นหลังช่วงปกติ
          Positioned.fill(
            child: CustomPaint(
              painter: _BackgroundRangePainter(
                minY: minY,
                maxY: maxY,
                normalMin: normalMin,
                normalMax: normalMax,
                color: Colors.green.withOpacity(0.15),
              ),
            ),
          ),
          // ป้ายช่วงปกติ
          Positioned(
            top: ((maxY - normalMax) / (maxY - minY)) * chartHeight - 20,
            left: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'ช่วงปกติ (70–100)',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.green.shade900,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // กราฟ
          Positioned.fill(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 1400,
                height: chartHeight,
                child: LineChart(
                  LineChartData(
                    minX: 0,
                    maxX: 24,
                    minY: minY,
                    maxY: maxY,
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      drawHorizontalLine: true,
                    ),
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          getTitlesWidget: (value, _) => Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              '${value.toInt()}:00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 20,
                          getTitlesWidget: (value, meta) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                value.toInt().toString(),
                                style: TextStyle(
                                  fontSize: 10,
                                  color:
                                      (value >= normalMin && value <= normalMax)
                                          ? Colors.green.shade800
                                          : Colors.black,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    lineBarsData: _buildColoredLineBars(),
                  ),
                ),
              ),
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
      final double avg = (start.y + end.y) / 2;

      Color color;
      if (avg < 70) {
        color = Colors.orange;
      } else if (avg <= 100) {
        color = Colors.green;
      } else {
        color = Colors.red;
      }

      lines.add(
        LineChartBarData(
          spots: [start, end],
          isCurved: true,
          curveSmoothness: 0.5,
          color: color,
          belowBarData: BarAreaData(show: false),
          dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, bar, index) {
              final borderColor = _getDotColor(spot.y);
              return FlDotCirclePainter(
                radius: 4,
                color: Colors.white,
                strokeColor: borderColor,
                strokeWidth: 2,
              );
            },
          ),
        ),
      );
    }

    return lines;
  }

  Color _getDotColor(double glucose) {
    if (glucose < 70) return Colors.orange;
    if (glucose <= 100) return Colors.green;
    return Colors.red;
  }
}

class _BackgroundRangePainter extends CustomPainter {
  final double minY;
  final double maxY;
  final double normalMin;
  final double normalMax;
  final Color color;

  _BackgroundRangePainter({
    required this.minY,
    required this.maxY,
    required this.normalMin,
    required this.normalMax,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final top = ((maxY - normalMax) / (maxY - minY)) * size.height;
    final bottom = ((maxY - normalMin) / (maxY - minY)) * size.height;

    final rect = Rect.fromLTRB(0, top, size.width, bottom);

    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        color.withOpacity(0.05),
        color.withOpacity(0.03),
      ],
      stops: [0.5, 1.0],
    );

    final fillPaint = Paint()..shader = gradient.createShader(rect);

    canvas.drawRect(rect, fillPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
