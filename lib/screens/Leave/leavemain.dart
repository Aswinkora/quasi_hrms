import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/Leave/leavecontent.dart';

class Leavemain extends StatefulWidget {
  const Leavemain({super.key});

  @override
  State<Leavemain> createState() => _LeavemainState();
}

class _LeavemainState extends State<Leavemain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container( height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[fouth, Colors.black],
                
              ),
            ),
            child: SafeArea(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                   padding: EdgeInsets.all(10),
                    height: MediaQuery.sizeOf(context).height/6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: fifth,
                                  )),
                              child: CircleAvatar(
                                backgroundColor: fifth,
                                radius: 47,
                                backgroundImage: AssetImage(
                                  "assets/images/deepak.png",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              spacing: 20,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    "Deepak Namarath",
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: fifth,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                               
                                Row(
                                  spacing: 20,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          '20',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('total leaves',
                                            style: TextStyle(color: fifth)),
                                      ],
                                    ),
                                   
                                    Column(
                                      children: [
                                        Text('10',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        Text('taken leaves',
                                            style: TextStyle(color: fifth)),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: fifth,
                      ),
                      height: MediaQuery.sizeOf(context).height / 1.4,
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Leavecontent(),
                      ),)
              ],
            )),)
        ],
      ),
    );
  }
}