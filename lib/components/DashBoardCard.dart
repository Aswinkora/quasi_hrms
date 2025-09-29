
import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class DashBoardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String count;
  final Color color;

  const DashBoardCard({super.key, 
    required this.icon,
    required this.title,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: const Color.fromARGB(255, 211, 211, 211)
      color: fifth
      ,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: color.withOpacity(0.2),
              child: Icon(icon, color: color, size: 30),
            ),
            const SizedBox(height: 15),
            Text(
              count,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

