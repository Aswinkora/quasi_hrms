import 'package:flutter/material.dart';
import 'package:quasi_hrms/components/icontext.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/AppraisalScreen.dart';
import 'package:quasi_hrms/screens/AttendanceScreen.dart';
import 'package:quasi_hrms/screens/DashBoardScreen.dart';
import 'package:quasi_hrms/screens/IncidentScreen.dart';
import 'package:quasi_hrms/screens/Payslip.dart';
import 'package:quasi_hrms/screens/PersonaldetailsScreen.dart';
import 'package:quasi_hrms/screens/SettingsScreen.dart';
import 'package:quasi_hrms/screens/TrainingScreen.dart';
import 'package:quasi_hrms/screens/Travelexpense/frontpage/frontmain.dart';
import 'package:quasi_hrms/screens/Travelexpense/travelexpensecontents.dart';
import 'package:quasi_hrms/screens/Travelexpense/travelexpensemain.dart';
import 'package:quasi_hrms/screens/grievancescreen.dart';

class Menudetails extends StatelessWidget {
  final bool isopen;
  Menudetails({
    super.key,
    required this.isopen,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: Duration(milliseconds: 1300),
        curve: Curves.easeInOut,
        right: isopen ? 0 : -250, // Slide in effect
        top: 0,
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
          width: MediaQuery.sizeOf(context).width/1.55,
          child: Drawer(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: primary,
                          ),
                          shape: BoxShape.circle),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/deepak.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Deepak Namarath",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Text("(KIK005)"),
                        Text("Human Resource Manager",
                            style: TextStyle(fontSize: 8)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashBoardScreen()));
                          },
                          child: IconText(icon: Icons.home, label: "Home")),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SettingsScreen()));
                          },
                          child: IconText(
                              icon: Icons.settings, label: "Settings")),
                      // IconText(
                      //     icon: Icons.timelapse_sharp, label: "Daily Shifts"),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AttendanceScreen()));
                          },
                          child: IconText(
                              icon: Icons.calendar_month, label: "Attendance")),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingScreen()));
                        },
                        child: IconText(
                            icon: Icons.model_training_outlined,
                            label: "Training"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GrievanceScreen()));
                        },
                        child: IconText(
                            icon: Icons.report_problem,
                            label: "Grievance"),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaySlipScreen()));
                          },
                          child: IconText(
                              icon: Icons.payments_outlined, label: "Payslip")),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IncidentScreen()));
                        },
                        child: IconText(
                            icon: Icons.admin_panel_settings,
                            label: "Competency and priviledge"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppraisalScreen()));
                        },
                        child: IconText(
                            icon: Icons.alarm_on_outlined, label: "Appraisals"),
                      ),
                        GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersonaldetailScreen()));
                        },
                        child: IconText(
                            icon: Icons.book_outlined, label: "Documents"),
                      ),
                       GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Frontmain()));
                        },
                        child: IconText(
                            icon: Icons.airport_shuttle_outlined, label: "Travel Expense"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
