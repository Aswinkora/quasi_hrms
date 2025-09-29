import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class Todayattendece extends StatefulWidget {
  const Todayattendece({super.key});

  @override
  State<Todayattendece> createState() => _TodayattendeceState();
}

class _TodayattendeceState extends State<Todayattendece> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(color: fifth),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'Work Log',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: fifth),
                          // color: fifth,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'punch in :',
                          style: TextStyle(color: fouth, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          '3:09:14',
                          style: TextStyle(color: fouth, fontSize: 30),
                        ),
                        Text(
                          'Total working time',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [Text('clock in time :'), Text("--:--")],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [Text('clock out time:'), Text("--:--")],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(color: fifth),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  'BREAK TIME',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  '00:00:03',
                  style: TextStyle(fontSize: 30, color: fouth),
                ),
                Text(
                  'Total break time',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: fifth),
                  // color: fifth,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'Lunch Break Going on',
                  style: TextStyle(color: fouth, fontSize: 17),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
