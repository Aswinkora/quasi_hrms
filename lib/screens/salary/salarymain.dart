import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/salary/salarycontent.dart';

class Salarymain extends StatelessWidget {
  const Salarymain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[fouth, Colors.black],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Gross Pay : 90000',
              style: TextStyle(color: fifth, fontSize: 20),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: fifth),
                    height: MediaQuery.sizeOf(context).height / 1.2,
                    width: MediaQuery.sizeOf(context).width,
                    child:Salarycontent() ,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
