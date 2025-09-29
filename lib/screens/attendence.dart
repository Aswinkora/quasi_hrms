import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/AttendanceScreen.dart';
import 'package:quasi_hrms/screens/attendecereport.dart';
// import 'package:hrms/screens/todayattend.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';

class Attendence extends StatefulWidget {
  const Attendence({super.key});

  @override
  State<Attendence> createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sixth,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.blueAccent),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Alexander",
              style: TextStyle(
                  fontSize: 18, color: fifth, fontWeight: FontWeight.bold),
            ),
            Text(
              "MBBS",
              style: TextStyle(fontSize: 14, color: fifth),
            ),
          ],
        ),
        actions: [
          ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: [Colors.white, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  shadows: [Shadow(blurRadius: 2, color: fouth)],
                  Icons.notifications_sharp,
                  color: Colors.white,
                ),
              )),
        ],
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            child: Text(
              'Today',
              style: TextStyle(color: fifth),
            ),
          ),
          Tab(
            child: Text(
              'Report',
              style: TextStyle(color: fifth),
            ),
          )
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        AttendanceScreen(),
        Report(),
      ]),
    );
  }
}
