// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class TaskScreen extends StatefulWidget {
//   const TaskScreen({super.key});

//   @override
//   State<TaskScreen> createState() => _TaskScreenState();
// }

// class _TaskScreenState extends State<TaskScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Stack(
//         children: [
//           Container(
//             height: MediaQuery.sizeOf(context).height,
//             width: MediaQuery.sizeOf(context).width,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: <Color>[fouth, Colors.black],
//               ),
//             ),
//           ),
//           SafeArea(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: Text(
//                       "task",
//                       style: TextStyle(
//                           color: fifth,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 25),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 50),
//                     child: Container(
//                       height: MediaQuery.sizeOf(context).height / 1.2,
//                       width: MediaQuery.sizeOf(context).width,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(50),
//                             topLeft: Radius.circular(50)),
//                         color: fifth,
//                       ),
                     
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ) ,
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class TaskScreen extends StatefulWidget {
//   const TaskScreen({super.key});

//   @override
//   State<TaskScreen> createState() => _TaskScreenState();
// }

// class _TaskScreenState extends State<TaskScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Gradient background
//           Container(
//             height: MediaQuery.sizeOf(context).height,
//             width: MediaQuery.sizeOf(context).width,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: <Color>[fouth, Colors.black],
//               ),
//             ),
//           ),

//           SafeArea(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   // Month title
//                   Padding(
//                     padding: const EdgeInsets.only(top: 80),
//                     child: Text(
//                       "October 2018",
//                       style: TextStyle(
//                         color: fifth,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 22,
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   // Date selector row
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           _buildDateBox("09", "Wed", true),
//                           const SizedBox(width: 10),
//                           _buildDateBox("10", "Thu", false),
//                           const SizedBox(width: 10),
//                           _buildDateBox("11", "Fri", false),
//                           const SizedBox(width: 10),
//                           _buildDateBox("12", "Sat", false),
//                             const SizedBox(width: 10),
//                           _buildDateBox("13", "Sat", false),
//                             const SizedBox(width: 10),
//                           _buildDateBox("14", "Sat", false),
//                             const SizedBox(width: 10),
//                           _buildDateBox("15", "Sat", false),
//                         ],
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 30),

//                   // Bottom white container
//                   Container(
//                     height: MediaQuery.sizeOf(context).height / 1.2,
//                     width: MediaQuery.sizeOf(context).width,
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.only(
//                         topRight: Radius.circular(40),
//                         topLeft: Radius.circular(40),
//                       ),
//                       color: fifth,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Task",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87,
//                             ),
//                           ),
//                           const SizedBox(height: 20),

//                           // Tasks list
//                           _buildTaskItem(
//                             title: "Ux member payment",
//                             subtitle: "Google Product Design",
//                             time: "10:20 am",
//                             icon: Icons.check_circle,
//                             iconColor: Colors.green,
//                           ),
//                           _buildTaskItem(
//                             title: "Interview user flow",
//                             subtitle: "Facebook User",
//                             time: "11:30 am",
//                             icon: Icons.check_circle,
//                             iconColor: Colors.green,
//                           ),
//                           _buildTaskItem(
//                             title: "Growth data analyst",
//                             subtitle: "Google Ux Team",
//                             time: "14:00 pm",
//                             icon: Icons.circle,
//                             iconColor: Colors.amber,
//                           ),
//                           _buildTaskItem(
//                             title: "Create new features",
//                             subtitle: "Tesla Services",
//                             time: "18:00 pm",
//                             icon: Icons.circle_outlined,
//                             iconColor: Colors.grey,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Date Box Widget
//   Widget _buildDateBox(String day, String weekday, bool isSelected) {
//     return Container(
//       width: 65,
//       height: 90,
//       decoration: BoxDecoration(
//         color: isSelected ? Colors.white : Colors.white.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             day,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: isSelected ? Colors.black : Colors.white,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             weekday,
//             style: TextStyle(
//               fontSize: 14,
//               color: isSelected ? Colors.black : Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Task item widget
//   Widget _buildTaskItem({
//     required String title,
//     required String subtitle,
//     required String time,
//     required IconData icon,
//     required Color iconColor,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 20),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(icon, color: iconColor, size: 24),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 15,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   subtitle,
//                   style: const TextStyle(
//                     fontSize: 13,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Text(
//             time,
//             style: const TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.w500,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
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
          ),

          SafeArea(
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Month title
                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 30),
                    child: Row(
                      children: [
                        Text(
                          "October 2018",
                          style: TextStyle(
                            color: fifth,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(height: 23,width: 23,color: Color.fromARGB(255, 50, 89, 142),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20,right: 10),
                            child: Icon(Icons.keyboard_arrow_down,color: fifth,),
                          ))
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Date selector row
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildDateBox("09", "Wed", true),
                          const SizedBox(width: 10),
                          _buildDateBox("10", "Thu", false),
                          const SizedBox(width: 10),
                          _buildDateBox("11", "Fri", false),
                          const SizedBox(width: 10),
                          _buildDateBox("12", "Sat", false),
                          const SizedBox(width: 10),
                          _buildDateBox("13", "Sun", false),
                          const SizedBox(width: 10),
                          _buildDateBox("14", "Mon", false),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Bottom white container
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.4,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      color: fifth,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Task",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Tasks list with dotted line
                          _buildTaskItem(
                            title: "Ux member payment",
                            subtitle: "Google Product Design",
                            time: "10:20 am",
                            icon: Icons.check_circle,
                            iconColor: Colors.green,
                            isLast: false,
                          ),
                          _buildTaskItem(
                            title: "Interview user flow",
                            subtitle: "Facebook User",
                            time: "11:30 am",
                            icon: Icons.check_circle,
                            iconColor: Colors.green,
                            isLast: false,
                          ),
                          _buildTaskItem(
                            title: "Growth data analyst",
                            subtitle: "Google Ux Team",
                            time: "14:00 pm",
                            icon: Icons.circle,
                            iconColor: Colors.amber,
                            isLast: false,
                          ),
                          _buildTaskItem(
                            title: "Create new features",
                            subtitle: "Tesla Services",
                            time: "18:00 pm",
                            icon: Icons.circle_outlined,
                            iconColor: Colors.grey,
                            isLast: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Date Box Widget
  Widget _buildDateBox(String day, String weekday, bool isSelected) {
    return Container(
      width: 75,
      height: 90,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.black : Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            weekday,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  // Task item with dotted line
  Widget _buildTaskItem({
    required String title,
    required String subtitle,
    required String time,
    required IconData icon,
    required Color iconColor,
    required bool isLast,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Timeline (Icon + dotted line)
          Column(
            children: [
              Icon(icon, color: iconColor, size: 24),
              if (!isLast)
                CustomPaint(
                  size: const Size(2, 10),
                  painter: DottedLinePainter(),
                ),
            ],
          ),
          const SizedBox(width: 12),

          // Task details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

// Custom dotted line painter
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1.5;

    double dashHeight = 4, dashSpace = 4, startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashHeight),
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
