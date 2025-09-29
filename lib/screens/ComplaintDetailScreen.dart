import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class ComplaintDetailsScreen extends StatelessWidget {
  final Map<String, String> complaint;

  ComplaintDetailsScreen({required this.complaint});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fifth,
        title: Text("Complaint Details",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Type: ${complaint['type']}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Description:", style: TextStyle(fontSize: 16)),
            Text(complaint['description'] ?? "", style: TextStyle(fontSize: 14)),
            SizedBox(height: 10),
            Text("Status: ${complaint['status']}", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text("Date: ${complaint['date']}", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
