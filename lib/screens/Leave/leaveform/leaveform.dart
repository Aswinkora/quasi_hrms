import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/Leave/leaveform/formcontent.dart';

class Leaveformmain extends StatefulWidget {
  const Leaveformmain({super.key});

  @override
  State<Leaveformmain> createState() => _LeaveformState();
}

class _LeaveformState extends State<Leaveformmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        SingleChildScrollView(
          child: Container(
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
                  'LEAVE FORM',
                  style: TextStyle(
                      color: fifth, fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                ),
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
                          child: Formcontent(),),
                )
                ],),
          ),
        )
      ],) ,
    );
  }
}