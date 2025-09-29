import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/consts/lists.dart';
import 'package:quasi_hrms/screens/Payslip.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Salarycontent extends StatefulWidget {
  const Salarycontent({super.key});

  @override
  State<Salarycontent> createState() => _SalarycontentState();
}

class _SalarycontentState extends State<Salarycontent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            height: 200,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[primary, fouth],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: LineChart(LineChartData(
                  gridData: FlGridData(
                    show: true,
                  ),
                  titlesData: FlTitlesData(
                    leftTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              final index = value.toInt();
                              if (index >= 0 && index < salaryData.length) {
                                return Text(
                                  salaryData[index]["month"].split(" ")[0],
                                  style: TextStyle(fontSize: 10, color: fifth),
                                );
                              }
                              return Text("");
                            },
                            interval: 1)),
                  ),
                  borderData: FlBorderData(
                    show: false,
                    border: const Border(
                      top: BorderSide.none,
                      right: BorderSide.none,
                      left: BorderSide(width: 0),
                      bottom: BorderSide(width: 0),
                    ),
                  ),
                  minX: 0,
                  maxX: (salaryData.length - 1).toDouble(),
                  minY: 0,
                  maxY: 100000,
                  lineBarsData: [
                    LineChartBarData(
                      isStrokeJoinRound: true,
                      dotData: FlDotData(show: false),
                      spots: salaryData
                          .asMap()
                          .entries
                          .map((e) => FlSpot(e.key.toDouble(),
                              e.value["netSalary"].toDouble()))
                          .toList(),
                      color: fifth,
                      barWidth: 3,
                      belowBarData: BarAreaData(
                        spotsLine: BarAreaSpotsLine(
                            flLineStyle: FlLine(strokeWidth: 4)),
                      ),
                    ),
                  ])),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: salaryData.length,
                itemBuilder: (context, index) {
                  final monthData = salaryData[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaySlipScreen()));
                      },
                      child: _salaryCard(monthData["month"],
                                    monthData["netSalary"], monthData["date"]),
                    ),
                  );
                }))
      ],
    );
    
  }
}

_salaryCard( String month,
    int netSalary,
    String date,) {
      return Padding(padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(16),
         decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                color: Colors.black12,
                offset: Offset(0, 4),
              )
            ],
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: fifth,
            border: Border.all(color: primary)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: primary,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    month,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: fouth,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  GradientText(
                    '₹$netSalary',
                    colors: [primary, fouth],
                    gradientDirection: GradientDirection.ttb,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // ...details.map((item) {
              //   return _salaryItem(item["label"]!, item["amount"]!);
              // }).toList(),
              const Divider(),
            ],
          ),
      ),
      );
}
