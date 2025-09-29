import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class AppraisalScreen extends StatelessWidget {
  const AppraisalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          _buildBackground(context),
          Column(
            children: [
              const SizedBox(height: 50),
              _buildTitle(),
              const SizedBox(height: 50),
              Expanded(child: _buildContent(context)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [fouth, Colors.black],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      "Appraisal",
      style: TextStyle(color: fifth, fontWeight: FontWeight.bold, fontSize: 25),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: fifth,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildEmployeeCard(context),
            _buildSectionTitle("Performance Rating"),
            _buildPerformanceChart(context),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 95),
              child: Text(
                "Comments and Feedbacks",
                style: TextStyle(
                    color: fouth, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Enter feedback here...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Achievements",
                style: TextStyle(
                    color: fouth, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 5,
            ),            
            Container(
              height: 150,
              width: MediaQuery.sizeOf(context).width / 1.2,
              decoration: BoxDecoration(
                 color: fifth,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildEmployeeCard(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.sizeOf(context).width / 1.2,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [primary, secondary]),
        // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/deepak.png"),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Deepak Namarath",
                    style: TextStyle(
                        color: fifth,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                Text("Department: HR",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                Text("Role: HR Manager",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                Text("Appraisal Period: Jan - Dec 2024",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
              color: fouth, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildPerformanceChart(BuildContext context) {
    List<Map<String, dynamic>> performanceData = [
      {"label": "Job Knowledge", "value": 50},
      {"label": "Team Work", "value": 20},
      {"label": "Punctuality", "value": 60},
      {"label": "Initiative", "value": 70},
      {"label": "Communication", "value": 40},
      {"label": "Skill", "value": 30}
    ];

    return Container(
      height: 250,
      width: MediaQuery.sizeOf(context).width / 1.2,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [primary, secondary]),
        borderRadius: BorderRadius.circular(15),
        // boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: performanceData
                .map((data) => _buildPieChart(data, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildPieChart(Map<String, dynamic> data, BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 4.2,
      height: MediaQuery.sizeOf(context).height / 8,
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${data['value']}%",
                    style: TextStyle(
                        fontSize: 16,
                        color: fifth,
                        fontWeight: FontWeight.bold)),
                Text(data['label'],
                    style: TextStyle(
                        fontSize: 8,
                        color: fifth,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                    color: secondary, value: 100, radius: 8, showTitle: false),
                PieChartSectionData(
                    color: third, value: 100, radius: 8, showTitle: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
