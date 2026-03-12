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
import 'dart:ui' as ui;

class CaloriesChart extends StatefulWidget {
  const CaloriesChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CaloriesChart> createState() => _CaloriesChartState();
}

class _CaloriesChartState extends State<CaloriesChart> {
  // Weekly calorie data: อา.(0), จ.(1), อ.(2), พ.(3), พฤ.(4), ศ.(5), ส.(6)
  final List<FlSpot> spots = [
    FlSpot(0, 1800), // อา.
    FlSpot(1, 2100), // จ.
    FlSpot(2, 1950), // อ.
    FlSpot(3, 2400), // พ.
    FlSpot(4, 1700), // พฤ.
    FlSpot(5, 2250), // ศ.
    FlSpot(6, 1600), // ส.
  ];

  final List<String> dayLabels = ['อา.', 'จ.', 'อ.', 'พ.', 'พฤ.', 'ศ.', 'ส.'];

  final double minY = 1000;
  final double maxY = 2800;

  @override
  Widget build(BuildContext context) {
    final chartHeight = widget.height ?? 300;

    return Container(
      width: widget.width ?? double.infinity,
      height: chartHeight,
      color: Colors.transparent,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 6,
          minY: minY,
          maxY: maxY,
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, _) {
                  final index = value.toInt();
                  if (index < 0 || index >= dayLabels.length) {
                    return const SizedBox.shrink();
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      dayLabels[index],
                      style: const TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
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
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              curveSmoothness: 0.4,
              color: const Color(0xFF2ECC8E),
              barWidth: 2.5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, bar, index) =>
                    _CaloriesLabelPainter(spot.y),
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF2ECC8E).withOpacity(0.25),
                    const Color(0xFF2ECC8E).withOpacity(0.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CaloriesLabelPainter extends FlDotPainter {
  final double calories;

  _CaloriesLabelPainter(this.calories);

  @override
  void draw(Canvas canvas, FlSpot spot, Offset center) {
    // Draw dot
    final dotPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final borderPaint = Paint()
      ..color = const Color(0xFF2ECC8E)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawCircle(center, 4, dotPaint);
    canvas.drawCircle(center, 4, borderPaint);

    // Draw label above dot
    final label = '${calories.toInt()}';
    final textPainter = TextPainter(
      text: TextSpan(
        text: label,
        style: const TextStyle(
          color: Color(0xFF2ECC8E),
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
      textDirection: ui.TextDirection.ltr,
    )..layout();

    final offset = Offset(
      center.dx - textPainter.width / 2,
      center.dy - textPainter.height - 10,
    );
    textPainter.paint(canvas, offset);
  }

  @override
  Size getSize(FlSpot spot) => const Size(60, 30);

  @override
  FlDotPainter lerp(FlDotPainter a, FlDotPainter b, double t) => b;

  @override
  Color get mainColor => const Color(0xFF2ECC8E);

  @override
  List<Object?> get props => [calories];
}
