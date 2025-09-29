import 'package:flutter/material.dart';

class ComplaintsPage extends StatelessWidget {
  final List<Map<String, String>> complaints = [
    {
      "title": "Office WiFi not working",
      "date": "2024-12-01",
      "status": "Open",
      "category": "IT Issues"
    },
    {
      "title": "AC malfunction in Meeting Room",
      "date": "2024-11-28",
      "status": "In Progress",
      "category": "Maintenance"
    },
    {
      "title": "Harassment complaint",
      "date": "2024-11-20",
      "status": "Resolved",
      "category": "HR"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Incidents & Complaints"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Summary Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _summaryCard("Open", "3", Colors.red),
                _summaryCard("In Progress", "2", Colors.orange),
                _summaryCard("Resolved", "5", Colors.green),
              ],
            ),
          ),
          // Complaints List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: complaints.length,
              itemBuilder: (context, index) {
                final complaint = complaints[index];
                return _complaintCard(
                  complaint["title"]!,
                  complaint["date"]!,
                  complaint["status"]!,
                  complaint["category"]!,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Complaint Submission Page
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // Summary Card Widget
  Widget _summaryCard(String label, String count, Color color) {
    return Card(
      color: color.withOpacity(0.2),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              count,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  // Complaint Card Widget
  Widget _complaintCard(
      String title, String date, String status, String category) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 3,
      child: ListTile(
        title: Text(title),
        subtitle: Text("Category: $category\nDate: $date"),
        trailing: Chip(
          label: Text(
            status,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: status == "Open"
              ? Colors.red
              : status == "In Progress"
                  ? Colors.orange
                  : Colors.green,
        ),
        onTap: () {
          // Navigate to Complaint Details Page
        },
      ),
    );
  }
}
