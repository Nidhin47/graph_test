import 'package:fl_chart/fl_chart.dart';
import 'package:new_graph_test/widget/line_titles.dart'; // Make sure to adjust this import based on your project structure
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return const FlLine(
                color: Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return const FlLine(
                color: Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 3),
                const FlSpot(2.6, 2),
                const FlSpot(4.9, 5),
                const FlSpot(6.8, 2.5),
                const FlSpot(8, 4),
                const FlSpot(9.5, 3),
                const FlSpot(11, 4),
              ],
              isCurved: true,
              gradient: LinearGradient(
              colors: gradientColors,
              ),
              barWidth: 5,
            ),
          ],
        ),
      );
}
