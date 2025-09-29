import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/Leave/history/historycontents.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        Container(
          height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[fouth, Colors.black],
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [Text(
                'LEAVE History',
                style: TextStyle(
                    color: fifth, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                    padding: EdgeInsets.only(top: 40),
                child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                topLeft: Radius.circular(50)),
                            color: fifth),
                        height: MediaQuery.sizeOf(context).height / 1.3,
                        width: MediaQuery.sizeOf(context).width,
                        child: Historycontents(),
                        ),
              )
              ],),
        )
      ],) ,
    );
  }
}