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

class WaistChart extends StatefulWidget {
  const WaistChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<WaistChart> createState() => _WaistChartState();
}

class _WaistChartState extends State<WaistChart> {
  late final List<Map<String, dynamic>> waistData;

  @override
  void initState() {
    super.initState();

    // สร้างข้อมูลรอบเอวย้อนหลัง 12 วัน
    final now = DateTime.now();
    waistData = List.generate(12, (i) {
      final date = now.subtract(Duration(days: 11 - i));
      final waist = 80 + Random().nextDouble() * 2 - 1; // ค่าสุ่มใกล้เคียง 80
      return {'date': date, 'waist': double.parse(waist.toStringAsFixed(1))};
    });
  }

  @override
  Widget build(BuildContext context) {
    final spots = List.generate(
      waistData.length,
      (i) => FlSpot(i.toDouble(), waistData[i]['waist']),
    );

    final minWaist = waistData.map((e) => e['waist'] as double).reduce(min);
    final maxWaist = waistData.map((e) => e['waist'] as double).reduce(max);

    final minY = (minWaist - 1).floorToDouble();
    final maxY = (maxWaist + 1).ceilToDouble();

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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: max(600, waistData.length * 80),
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: (waistData.length - 1).toDouble(),
                      minY: minY,
                      maxY: maxY,
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            getTitlesWidget: (value, _) {
                              final index = value.toInt();
                              if (index < 0 || index >= waistData.length)
                                return const SizedBox();
                              final date = waistData[index]['date'] as DateTime;
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
                          color: const Color(0xFF4A99F5),
                          barWidth: 3,
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, _, __, ___) =>
                                FlDotCirclePainter(
                              radius: 4,
                              color: Colors.white,
                              strokeWidth: 2,
                              strokeColor: const Color(0xFF4A99F5),
                            ),
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF4A99F5).withOpacity(0.1),
                                const Color(0xFF4A99F5).withOpacity(0.01),
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
              bottom: 16,
              left: 8.0,
              right: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                ((maxY - minY) + 1).toInt(),
                (i) {
                  final yValue = maxY - i.toDouble();
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
