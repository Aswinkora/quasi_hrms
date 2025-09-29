import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class VaccinationPage extends StatefulWidget {
  @override
  State<VaccinationPage> createState() => _VaccinationPageState();
}

class _VaccinationPageState extends State<VaccinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vaccination Records"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Card(
                  color: Colors.blue[50],
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Next Vaccination Due:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            GradientText(
                              "COVID-19 Booster: 2024-12-15",
                              colors: [Colors.blue, Colors.purple],
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(Icons.vaccines,
                            size: 40, color: Colors.blue),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: 3, 
              itemBuilder: (context, index) {
                return _vaccinationCard(
                  "COVID-19 Vaccine",
                  "Dose ${index + 1}",
                  "2024-10-01",
                  index == 2 ? "2024-12-15" : "Completed",
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _vaccinationCard(
      String vaccineName, String doseNumber, String dateGiven, String status) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 9,
            color: Colors.black12,
            offset: Offset(4, 4),
          )
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              vaccineName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dose: $doseNumber"),
                    Text("Date Given: $dateGiven"),
                  ],
                ),
                Chip(
                  label: Text(
                    status,
                    style: TextStyle(
                      color: status == "Completed" ? Colors.green : Colors.red,
                    ),
                  ),
                  backgroundColor:
                      status == "Completed" ? Colors.green[50] : Colors.red[50],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
