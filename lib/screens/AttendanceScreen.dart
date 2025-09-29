// import 'package:flutter/material.dart';

// class ESSAttendanceScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ESS Attendance"),
//         backgroundColor: Colors.blue,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {
//               // Notifications action
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Employee Information
//             Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12.0),
//               ),
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with actual image
//                   radius: 30,
//                 ),
//                 title: Text(
//                   "John Doe",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 subtitle: Text("Employee ID: 12345"),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Attendance Status
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 _buildStatusCard("Status", "Present", Colors.green),
//                 _buildStatusCard("Days Worked", "20", Colors.blue),
//                 _buildStatusCard("Leave Balance", "5", Colors.orange),
//               ],
//             ),
//             SizedBox(height: 16),

//             // Clock In/Out
//             Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12.0),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       "Last Clock-In: 9:00 AM",
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                     ),
//                     SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Clock In/Out action
//                       },
//                       child: Text("Clock In"),
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(double.infinity, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Attendance History
//             Text(
//               "Attendance History",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             _buildAttendanceHistory(),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper Widget: Status Card
//   Widget _buildStatusCard(String title, String value, Color color) {
//     return Card(
//       color: color.withOpacity(0.1),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Text(
//               title,
//               style: TextStyle(fontSize: 14, color: color),
//             ),
//             SizedBox(height: 8),
//             Text(
//               value,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper Widget: Attendance History List
//   Widget _buildAttendanceHistory() {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: 7, // Example: Last 7 days
//       itemBuilder: (context, index) {
//         return ListTile(
//           leading: CircleAvatar(
//             backgroundColor: index % 2 == 0 ? Colors.green : Colors.red,
//             child: Icon(
//               index % 2 == 0 ? Icons.check : Icons.close,
//               color: Colors.white,
//             ),
//           ),
//           title: Text("Date: 2024-01-${30 - index}"),
//           subtitle: Text(index % 2 == 0 ? "Present" : "Absent"),
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class AttendanceScreen extends StatefulWidget {
//   const AttendanceScreen({super.key});

//   @override
//   State<AttendanceScreen> createState() => _AttendanceScreenState();
// }

// class _AttendanceScreenState extends State<AttendanceScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
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
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 60),
//                     child: Text(
//                       "Attendance",
//                       style: TextStyle(
//                           color: fifth,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 25),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 40,
//                     ),
//                     child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(50),
//                               topLeft: Radius.circular(50)),
//                           color: fifth,
//                         ),
//                         height: MediaQuery.sizeOf(context).height / 1.2,
//                         width: MediaQuery.sizeOf(context).width,
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 30,bottom: 30),
//                           child: SingleChildScrollView(
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding:
//                                       const EdgeInsets.only(left: 20, right: 20),
//                                   child: SearchBar(
//                                     shape: WidgetStatePropertyAll(
//                                         RoundedRectangleBorder(
//                                             side: BorderSide(color: primary),
//                                             borderRadius:
//                                                 BorderRadius.circular(13))),
//                                     leading: Icon(Icons.search),
//                                     shadowColor:
//                                         WidgetStatePropertyAll(Colors.black),
//                                     backgroundColor:
//                                         WidgetStatePropertyAll(fifth),
//                                   ),
//                                 ),
//                                 SizedBox(height: 20,),
//                                 Container(
//                                   height: 60,
//                                   width: MediaQuery.sizeOf(context).width / 1.2,
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       begin: Alignment.centerLeft,
//                                       end: Alignment.centerRight,
//                                       colors: <Color>[primary, secondary],
//                                     ),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                         color: Colors.black12,
//                                         blurRadius: 6.0,
//                                         offset: Offset(0, 4),
//                                       ),
//                                     ],
//                                     borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(15),
//                                         topRight: Radius.circular(15)),
//                                     // color: primary
//                                   ),
//                                   child: Padding(
//                                     padding:
//                                         const EdgeInsets.only(left: 20, top: 20),
//                                     child: Text(
//                                       "Work Log",
//                                       style:
//                                           TextStyle(color: fifth, fontSize: 20),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 280,
//                                   width: MediaQuery.sizeOf(context).width / 1.2,
//                                   decoration: BoxDecoration(
//                                       boxShadow: const [
//                                         BoxShadow(
//                                           color: Colors.black12,
//                                           blurRadius: 6.0,
//                                           offset: Offset(0, 4),
//                                         ),
//                                       ],
//                                       borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(15),
//                                           bottomRight: Radius.circular(15)),
//                                       color: fifth),
//                                   child: Column(
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.only(top: 20),
//                                         child: Container(
//                                           height: 60,
//                                           width: 250,
//                                           decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(15),
//                                               border: Border.all(color: primary)),
//                                           child: Center(
//                                             child: Padding(
//                                               padding: const EdgeInsets.all(8.0),
//                                               child: Text(
//                                                 "Punch in at:Fri,15th Dec 2024,10:31 AM",
//                                                 style: TextStyle(
//                                                     color: Colors.black,
//                                                     fontWeight: FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                         "03 : 59 : 41",
//                                         style: TextStyle(
//                                             color: fouth,
//                                             fontSize: 22,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       // SizedBox(height: 5,),
//                                       Text(
//                                         "total Work Time",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 10),
//                                       ),
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 30),
//                                         child: Row(
//                                           children: [
//                                             Text(
//                                               "Clock In time:",
//                                               style: TextStyle(
//                                                 color: Colors.grey,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Clock Out time:",
//                                               style: TextStyle(
//                                                 color: Colors.grey,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 50),
//                                         child: Row(
//                                           children: [
//                                             Text(
//                                               "10:31:36",
//                                               style: TextStyle(color: Colors.red),
//                                             ),
//                                             SizedBox(
//                                               width: 100,
//                                             ),
//                                             Text(
//                                               "--:--:--",
//                                               style: TextStyle(
//                                                   color: fouth,
//                                                   fontWeight: FontWeight.bold),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 30),
//                                         child: Row(
//                                           children: [
//                                             Container(
//                                               width: MediaQuery.sizeOf(context)
//                                                       .width /
//                                                   3.9,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(33),
//                                                   gradient: LinearGradient(
//                                                       colors: [primary, fouth],
//                                                       begin: Alignment.topCenter,
//                                                       end:
//                                                           Alignment.centerRight)),
//                                               child: ElevatedButton(
//                                                 onPressed: () {},
//                                                 style: ButtonStyle(
//                                                     backgroundColor:
//                                                         WidgetStatePropertyAll(
//                                                             Colors.transparent),
//                                                     shadowColor:
//                                                         WidgetStatePropertyAll(
//                                                             // const Color.fromARGB(255, 180, 209, 233)
//                                                             Colors.transparent),
//                                                     fixedSize:
//                                                         WidgetStatePropertyAll(
//                                                             Size(340, 50))),
//                                                 child: Text(
//                                                   'Punch in',
//                                                   style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontWeight: FontWeight.w800,
//                                                       fontSize: 10),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               width: 55,
//                                             ),
//                                             Container(
//                                               width: MediaQuery.sizeOf(context)
//                                                       .width /
//                                                   3.9,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(33),
//                                                   gradient: LinearGradient(
//                                                       colors: [primary, fouth],
//                                                       begin: Alignment.topCenter,
//                                                       end:
//                                                           Alignment.centerRight)),
//                                               child: ElevatedButton(
//                                                 onPressed: () {},
//                                                 style: ButtonStyle(
//                                                     backgroundColor:
//                                                         WidgetStatePropertyAll(
//                                                             Colors.transparent),
//                                                     shadowColor:
//                                                         WidgetStatePropertyAll(
//                                                             // const Color.fromARGB(255, 180, 209, 233)
//                                                             Colors.transparent),
//                                                     fixedSize:
//                                                         WidgetStatePropertyAll(
//                                                             Size(340, 50))),
//                                                 child: Text(
//                                                   'Punch Out',
//                                                   style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontWeight: FontWeight.w800,
//                                                       fontSize: 10),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 // Container(
//                                 //   height: 60,
//                                 //   width: MediaQuery.sizeOf(context).width / 1.2,
//                                 //   decoration: BoxDecoration(
//                                 //     gradient: LinearGradient(
//                                 //       begin: Alignment.centerLeft,
//                                 //       end: Alignment.centerRight,
//                                 //       colors: <Color>[primary, secondary],
//                                 //     ),
//                                 //     boxShadow: const [
//                                 //       BoxShadow(
//                                 //         color: Colors.black12,
//                                 //         blurRadius: 6.0,
//                                 //         offset: Offset(0, 4),
//                                 //       ),
//                                 //     ],
//                                 //     borderRadius: BorderRadius.only(
//                                 //         topLeft: Radius.circular(15),
//                                 //         topRight: Radius.circular(15)),
//                                 //     // color: primary
//                                 //   ),
//                                 //   child: Padding(
//                                 //     padding:
//                                 //         const EdgeInsets.only(left: 20, top: 20),
//                                 //     child: Text(
//                                 //       "Break Time",
//                                 //       style:
//                                 //           TextStyle(color: fifth, fontSize: 20),
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 // Container(
//                                 //   height: 200,
//                                 //   width: MediaQuery.sizeOf(context).width / 1.2,
//                                 //   decoration: BoxDecoration(
//                                 //       boxShadow: const [
//                                 //         BoxShadow(
//                                 //           color: Colors.black12,
//                                 //           blurRadius: 6.0,
//                                 //           offset: Offset(0, 4),
//                                 //         ),
//                                 //       ],
//                                 //       borderRadius: BorderRadius.only(
//                                 //           bottomLeft: Radius.circular(15),
//                                 //           bottomRight: Radius.circular(15)),
//                                 //       color: fifth),
//                                 //   child: Column(
//                                 //     children: [
//                                 //       SizedBox(
//                                 //         height: 15,
//                                 //       ),
//                                 //       Text(
//                                 //         "00 : 00 : 03",
//                                 //         style: TextStyle(
//                                 //             color: fouth,
//                                 //             fontSize: 22,
//                                 //             fontWeight: FontWeight.bold),
//                                 //       ),
//                                 //       // SizedBox(height: 5,),
//                                 //       Text(
//                                 //         "total Break Time",
//                                 //         style: TextStyle(
//                                 //             color: Colors.black,
//                                 //             fontWeight: FontWeight.bold,
//                                 //             fontSize: 10),
//                                 //       ),
//                                 //       Padding(
//                                 //         padding: const EdgeInsets.only(top: 10),
//                                 //         child: Container(
//                                 //           height: 30,
//                                 //           width: 250,
//                                 //           decoration: BoxDecoration(
//                                 //               borderRadius:
//                                 //                   BorderRadius.circular(15),
//                                 //               border: Border.all(color: primary)),
//                                 //           child: Center(
//                                 //             child: Text(
//                                 //               "Lunch Break is going on.",
//                                 //               style: TextStyle(
//                                 //                   color: Colors.black,
//                                 //                   fontWeight: FontWeight.bold),
//                                 //             ),
//                                 //           ),
//                                 //         ),
//                                 //       ),
//                                 //       SizedBox(
//                                 //         height: 20,
//                                 //       ),

//                                 //       Padding(
//                                 //         padding: const EdgeInsets.only(left: 10),
//                                 //         child: Container(
//                                 //           width:
//                                 //               MediaQuery.sizeOf(context).width /
//                                 //                   1.7,
//                                 //           decoration: BoxDecoration(
//                                 //               borderRadius:
//                                 //                   BorderRadius.circular(33),
//                                 //               gradient: LinearGradient(
//                                 //                   colors: [primary, fouth],
//                                 //                   begin: Alignment.topCenter,
//                                 //                   end: Alignment.centerRight)),
//                                 //           child: ElevatedButton(
//                                 //             onPressed: () {},
//                                 //             style: ButtonStyle(
//                                 //                 backgroundColor:
//                                 //                     WidgetStatePropertyAll(
//                                 //                         Colors.transparent),
//                                 //                 shadowColor:
//                                 //                     WidgetStatePropertyAll(
//                                 //                         // const Color.fromARGB(255, 180, 209, 233)
//                                 //                         Colors.transparent),
//                                 //                 fixedSize: WidgetStatePropertyAll(
//                                 //                     Size(340, 50))),
//                                 //             child: Text(
//                                 //               'Break End',
//                                 //               style: TextStyle(
//                                 //                   color: Colors.white,
//                                 //                   fontWeight: FontWeight.w800,
//                                 //                   fontSize: 10),
//                                 //             ),
//                                 //           ),
//                                 //         ),
//                                 //       ),
//                                 //     ],
//                                 //   ),
//                                 // ),
//                               ],
//                             ),
//                           ),
//                         )),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class AttendanceScreen extends StatefulWidget {
//   const AttendanceScreen({super.key});

//   @override
//   State<AttendanceScreen> createState() => _AttendanceScreenState();
// }

// class _AttendanceScreenState extends State<AttendanceScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
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
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 60),
//                     child: Text(
//                       "Attendance",
//                       style: TextStyle(
//                           color: fifth,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 25),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 40,
//                     ),
//                     child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(50),
//                               topLeft: Radius.circular(50)),
//                           color: fifth,
//                         ),
//                         height: MediaQuery.sizeOf(context).height / 1.2,
//                         width: MediaQuery.sizeOf(context).width,
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 30,bottom: 30),
//                           child: SingleChildScrollView(
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding:
//                                       const EdgeInsets.only(left: 20, right: 20),
//                                   child: SearchBar(
//                                     shape: WidgetStatePropertyAll(
//                                         RoundedRectangleBorder(
//                                             side: BorderSide(color: primary),
//                                             borderRadius:
//                                                 BorderRadius.circular(13))),
//                                     leading: Icon(Icons.search),
//                                     shadowColor:
//                                         WidgetStatePropertyAll(Colors.black),
//                                     backgroundColor:
//                                         WidgetStatePropertyAll(fifth),
//                                   ),
//                                 ),
//                                 SizedBox(height: 20,),
//                                 Container(
//                                   height: 60,
//                                   width: MediaQuery.sizeOf(context).width / 1.2,
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       begin: Alignment.centerLeft,
//                                       end: Alignment.centerRight,
//                                       colors: <Color>[primary, secondary],
//                                     ),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                         color: Colors.black12,
//                                         blurRadius: 6.0,
//                                         offset: Offset(0, 4),
//                                       ),
//                                     ],
//                                     borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(15),
//                                         topRight: Radius.circular(15)),
//                                     // color: primary
//                                   ),
//                                   child: Padding(
//                                     padding:
//                                         const EdgeInsets.only(left: 20, top: 20),
//                                     child: Text(
//                                       "Work Log",
//                                       style:
//                                           TextStyle(color: fifth, fontSize: 20),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 280,
//                                   width: MediaQuery.sizeOf(context).width / 1.2,
//                                   decoration: BoxDecoration(
//                                       boxShadow: const [
//                                         BoxShadow(
//                                           color: Colors.black12,
//                                           blurRadius: 6.0,
//                                           offset: Offset(0, 4),
//                                         ),
//                                       ],
//                                       borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(15),
//                                           bottomRight: Radius.circular(15)),
//                                       color: fifth),
//                                   child: Column(
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.only(top: 20),
//                                         child: Container(
//                                           height: 60,
//                                           width: 250,
//                                           decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(15),
//                                               border: Border.all(color: primary)),
//                                           child: Center(
//                                             child: Padding(
//                                               padding: const EdgeInsets.all(8.0),
//                                               child: Text(
//                                                 "Punch in at:Fri,15th Dec 2024,10:31 AM",
//                                                 style: TextStyle(
//                                                     color: Colors.black,
//                                                     fontWeight: FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                         "03 : 59 : 41",
//                                         style: TextStyle(
//                                             color: fouth,
//                                             fontSize: 22,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       // SizedBox(height: 5,),
//                                       Text(
//                                         "total Work Time",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 10),
//                                       ),
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 30),
//                                         child: Row(
//                                           children: [
//                                             Text(
//                                               "Clock In time:",
//                                               style: TextStyle(
//                                                 color: Colors.grey,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Clock Out time:",
//                                               style: TextStyle(
//                                                 color: Colors.grey,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 50),
//                                         child: Row(
//                                           children: [
//                                             Text(
//                                               "10:31:36",
//                                               style: TextStyle(color: Colors.red),
//                                             ),
//                                             SizedBox(
//                                               width: 100,
//                                             ),
//                                             Text(
//                                               "--:--:--",
//                                               style: TextStyle(
//                                                   color: fouth,
//                                                   fontWeight: FontWeight.bold),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 30),
//                                         child: Row(
//                                           children: [
//                                             Container(
//                                               width: MediaQuery.sizeOf(context)
//                                                       .width /
//                                                   3.9,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(33),
//                                                   gradient: LinearGradient(
//                                                       colors: [primary, fouth],
//                                                       begin: Alignment.topCenter,
//                                                       end:
//                                                           Alignment.centerRight)),
//                                               child: ElevatedButton(
//                                                 onPressed: () {},
//                                                 style: ButtonStyle(
//                                                     backgroundColor:
//                                                         WidgetStatePropertyAll(
//                                                             Colors.transparent),
//                                                     shadowColor:
//                                                         WidgetStatePropertyAll(
//                                                             // const Color.fromARGB(255, 180, 209, 233)
//                                                             Colors.transparent),
//                                                     fixedSize:
//                                                         WidgetStatePropertyAll(
//                                                             Size(340, 50))),
//                                                 child: Text(
//                                                   'Punch in',
//                                                   style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontWeight: FontWeight.w800,
//                                                       fontSize: 10),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               width: 55,
//                                             ),
//                                             Container(
//                                               width: MediaQuery.sizeOf(context)
//                                                       .width /
//                                                   3.9,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(33),
//                                                   gradient: LinearGradient(
//                                                       colors: [primary, fouth],
//                                                       begin: Alignment.topCenter,
//                                                       end:
//                                                           Alignment.centerRight)),
//                                               child: ElevatedButton(
//                                                 onPressed: () {},
//                                                 style: ButtonStyle(
//                                                     backgroundColor:
//                                                         WidgetStatePropertyAll(
//                                                             Colors.transparent),
//                                                     shadowColor:
//                                                         WidgetStatePropertyAll(
//                                                             // const Color.fromARGB(255, 180, 209, 233)
//                                                             Colors.transparent),
//                                                     fixedSize:
//                                                         WidgetStatePropertyAll(
//                                                             Size(340, 50))),
//                                                 child: Text(
//                                                   'Punch Out',
//                                                   style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontWeight: FontWeight.w800,
//                                                       fontSize: 10),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),

//                               ],
//                             ),
//                           ),
//                         )),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class AttendanceScreen extends StatefulWidget {
//   const AttendanceScreen({super.key});

//   @override
//   State<AttendanceScreen> createState() => _AttendanceScreenState();
// }

// class _AttendanceScreenState extends State<AttendanceScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Container(
//         height: MediaQuery.sizeOf(context).height,
//         width: MediaQuery.sizeOf(context).width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: <Color>[fouth, Colors.black],
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 60),
//                 child: Text(
//                   "Attendance",
//                   style: TextStyle(color: fifth, fontWeight: FontWeight.bold, fontSize: 25),
//                 ),
//               ),
//               _buildSection(
//                 title: "Work Log",
//                 child: Column(
//                   children: [
//                     _buildPunchIn("Punch in at: Fri, 15th Dec 2024, 10:31 AM"),
//                     _buildTimeInfo("03 : 59 : 41", "total Work Time"),
//                     _buildClockTimes(),
//                     _buildActionButtons()
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSection({required String title, required Widget child}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
//           color: fifth,
//         ),
//         height: MediaQuery.sizeOf(context).height ,
//         width: MediaQuery.sizeOf(context).width,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30, bottom: 30),
//           child: Column(
//             children: [
//               _buildHeader(title),
//               Expanded(child: SingleChildScrollView(child: child)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader(String title) {
//     return Container(
//       height: 60,
//       width: MediaQuery.sizeOf(context).width / 1.2,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//           colors: <Color>[primary, secondary],
//         ),
//         boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 4))],
//         borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(left: 20, top: 20),
//         child: Text(
//           title,
//           style: TextStyle(color: fifth, fontSize: 20),
//         ),
//       ),
//     );
//   }

//   Widget _buildPunchIn(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Container(
//         height: 60,
//         width: 250,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(color: primary),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(text, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTimeInfo(String time, String label) {
//     return Column(
//       children: [
//         SizedBox(height: 5),
//         Text(time, style: TextStyle(color: fouth, fontSize: 22, fontWeight: FontWeight.bold)),
//         Text(label, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10)),
//         SizedBox(height: 15),
//       ],
//     );
//   }

//   Widget _buildClockTimes() {
//     return Padding(
//       padding: const EdgeInsets.only(left: 55),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text("Clock In time:", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
//               SizedBox(width: 50),
//               Text("Clock Out time:", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
//             ],
//           ),
//           Row(
//             children: [
//               Text("10:31:36", style: TextStyle(color: Colors.red)),
//               SizedBox(width: 100),
//               Text("--:--:--", style: TextStyle(color: fouth, fontWeight: FontWeight.bold)),
//             ],
//           ),
//           SizedBox(height: 15),
//         ],
//       ),
//     );
//   }

//   Widget _buildActionButtons() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildButton('Punch in'),
//           SizedBox(width: 55),
//           _buildButton('Punch Out'),
//         ],
//       ),
//     );
//   }

//   Widget _buildButton(String label) {
//     return Container(
//       width: MediaQuery.sizeOf(context).width / 3.9,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(33),
//         gradient: LinearGradient(colors: [primary, fouth], begin: Alignment.topCenter, end: Alignment.centerRight),
//       ),
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(Colors.transparent),
//           shadowColor: MaterialStateProperty.all(Colors.transparent),
//         ),
//         child: Text(label, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 10)),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class AttendanceScreen extends StatefulWidget {
//   const AttendanceScreen({super.key});

//   @override
//   State<AttendanceScreen> createState() => _AttendanceScreenState();
// }

// class _AttendanceScreenState extends State<AttendanceScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Container(
//         height: MediaQuery.sizeOf(context).height,
//         width: MediaQuery.sizeOf(context).width,

//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: <Color>[fouth, Colors.black],
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 60),
//                 child: Text(
//                   "Attendance",
//                   style: TextStyle(
//                       color: fifth, fontWeight: FontWeight.bold, fontSize: 25),
//                 ),
//               ),
//               _buildSection(
//                 title: "Work Log",
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 33, right: 33),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: fifth,
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 6.0,
//                             offset: Offset(0, 4),
//                           ),
//                         ],
//                         borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(20),
//                             bottomRight: Radius.circular(20)),
//                         border: Border.all(color: primary)),
//                     padding: const EdgeInsets.all(20),
//                     child: Column(
//                       children: [
//                         _buildPunchIn(
//                             "Punch in at: Fri, 15th Dec 2024, 10:31 AM"),
//                         _buildTimeInfo("03 : 59 : 41", "total Work Time"),
//                         _buildClockTimes(),
//                         _buildActionButtons()
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSection({required String title, required Widget child}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 30),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(50), topRight: Radius.circular(50)),
//           color: fifth,
//         ),
//         height: MediaQuery.sizeOf(context).height / 1.1,
//         width: MediaQuery.sizeOf(context).width,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30, bottom: 30),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: SearchBar(
//                   shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//                       side: BorderSide(color: primary),
//                       borderRadius: BorderRadius.circular(13))),
//                   leading: Icon(Icons.search),
//                   shadowColor: WidgetStatePropertyAll(Colors.black),
//                   backgroundColor: WidgetStatePropertyAll(fifth),
//                 ),
//               ),
//               _buildHeader(title),
//               Expanded(child: SingleChildScrollView(child: child)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader(String title) {
//     return Container(
//       height: 60,
//       width: MediaQuery.sizeOf(context).width / 1.2,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//           colors: <Color>[primary, secondary],
//         ),
//         boxShadow: const [
//           BoxShadow(
//               color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 4))
//         ],
//         borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(left: 20, top: 20),
//         child: Text(
//           title,
//           style: TextStyle(color: fifth, fontSize: 20),
//         ),
//       ),
//     );
//   }

//   Widget _buildPunchIn(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: Container(
//         height: 60,
//         width: 250,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(color: primary),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(text,
//                 style: TextStyle(
//                     color: Colors.black, fontWeight: FontWeight.bold)),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTimeInfo(String time, String label) {
//     return Column(
//       children: [
//         SizedBox(height: 5),
//         Text(time,
//             style: TextStyle(
//                 color: fouth, fontSize: 22, fontWeight: FontWeight.bold)),
//         Text(label,
//             style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 10)),
//         SizedBox(height: 15),
//       ],
//     );
//   }

//   Widget _buildClockTimes() {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text("Clock In time:",
//                   style: TextStyle(
//                       color: Colors.grey, fontWeight: FontWeight.bold)),
//               SizedBox(width: 50),
//               Text("Clock Out time:",
//                   style: TextStyle(
//                       color: Colors.grey, fontWeight: FontWeight.bold)),
//             ],
//           ),
//           Row(
//             children: [
//               Text("10:31:36", style: TextStyle(color: Colors.red)),
//               SizedBox(width: 100),
//               Text("--:--:--",
//                   style: TextStyle(color: fouth, fontWeight: FontWeight.bold)),
//             ],
//           ),
//           SizedBox(height: 15),
//         ],
//       ),
//     );
//   }

//   Widget _buildActionButtons() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildButton('Punch in'),
//           SizedBox(width: 55),
//           _buildButton('Punch Out'),
//         ],
//       ),
//     );
//   }

//   Widget _buildButton(String label) {
//     return Container(
//       width: MediaQuery.sizeOf(context).width / 3.9,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(33),
//         gradient: LinearGradient(
//             colors: [primary, fouth],
//             begin: Alignment.topCenter,
//             end: Alignment.centerRight),
//       ),
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(Colors.transparent),
//           shadowColor: MaterialStateProperty.all(Colors.transparent),
//         ),
//         child: Text(label,
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w800,
//                 fontSize: 10)),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class AttendanceScreen extends StatefulWidget {
//   const AttendanceScreen({super.key});

//   @override
//   State<AttendanceScreen> createState() => _AttendanceScreenState();
// }

// class _AttendanceScreenState extends State<AttendanceScreen> {
//   int selectedDayIndex = 0;
//   final List<String> days = ["28", "29", "30", "1", "2", "3", "4"];
//   final List<String> weekDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF0E0E0E),
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 16),

//             // Month & Date
//             Center(
//               child: Column(
//                 children: [
//                   const Text(
//                     "Mar 2023",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   const Text(
//                     "Wed, 8 March 2023",
//                     style: TextStyle(color: Colors.grey, fontSize: 14),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Horizontal date picker
//             SizedBox(
//               height: 70,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 itemCount: days.length,
//                 itemBuilder: (context, index) {
//                   bool isSelected = index == selectedDayIndex;
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedDayIndex = index;
//                       });
//                     },
//                     child: Container(
//                       width: 50,
//                       margin: const EdgeInsets.symmetric(horizontal: 6),
//                       decoration: BoxDecoration(
//                         color: isSelected
//                             ? const Color(0xFF2EE6A8)
//                             : Colors.transparent,
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             days[index],
//                             style: TextStyle(
//                                 color: isSelected ? Colors.black : Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16),
//                           ),
//                           Text(
//                             weekDays[index],
//                             style: TextStyle(
//                                 color:
//                                     isSelected ? Colors.black : Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Your Attendance header
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: const [
//                   Text(
//                     "Your Attendance",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18),
//                   ),
//                   Text(
//                     "See more",
//                     style: TextStyle(
//                         color: Color(0xFF2EE6A8),
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 16),

//             // Attendance cards
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: _buildAttendanceCard(
//                       title: "Check In",
//                       time: "07:30",
//                       status: "On Time",
//                       icon: Icons.login,
//                       iconColor: const Color(0xFF2EE6A8),
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   Expanded(
//                     child: _buildAttendanceCard(
//                       title: "Check Out",
//                       time: "Not Yet",
//                       status: "Start at 17:00",
//                       icon: Icons.logout,
//                       iconColor: Colors.redAccent,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildAttendanceCard({
//     required String title,
//     required String time,
//     required String status,
//     required IconData icon,
//     required Color iconColor,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: const Color(0xFF1A1A1A),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(icon, color: iconColor, size: 20),
//               const SizedBox(width: 8),
//               Text(
//                 title,
//                 style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Text(
//             time,
//             style: const TextStyle(
//                 color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             status,
//             style: TextStyle(color: iconColor, fontSize: 14),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class AttendanceScreen extends StatefulWidget {
//   const AttendanceScreen({super.key});

//   @override
//   State<AttendanceScreen> createState() => _AttendanceScreenState();
// }

// class _AttendanceScreenState extends State<AttendanceScreen> {
//   int selectedDayIndex = 0;
//   final List<String> days = ["28", "29", "30", "1", "2", "3", "4"];
//   final List<String> weekDays = [
//     "Mon",
//     "Tue",
//     "Wed",
//     "Thu",
//     "Fri",
//     "Sat",
//     "Sun"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Container(
//         height: MediaQuery.sizeOf(context).height,
//         width: MediaQuery.sizeOf(context).width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: <Color>[fouth, Colors.black],
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Top container with Attendance and Date
//               Padding(
//                 padding: const EdgeInsets.only(top: 60),
//                 child: Column(
//                   children: [
//                     // Text(
//                     //   "Attendance",
//                     //   style: TextStyle(
//                     //     color: fifth,
//                     //     fontWeight: FontWeight.bold,
//                     //     fontSize: 25,
//                     //   ),
//                     // ),
//                     const SizedBox(height: 8),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: 120,
//                         ),
//                         const Text(
//                           "Mar 2023",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 70,
//                         ),
//                         Container(
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(color: fifth)),
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.calendar_month,
//                                   color: fifth,
//                                 )))
//                       ],
//                     ),
//                     const SizedBox(height: 4),
//                     const Text(
//                       "Wed, 8 March 2023",
//                       style: TextStyle(
//                         color: Colors.white70,
//                         fontSize: 14,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),

// //             // Horizontal date picker
//               SizedBox(
//                 height: 70,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   itemCount: days.length,
//                   itemBuilder: (context, index) {
//                     bool isSelected = index == selectedDayIndex;
//                     return GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedDayIndex = index;
//                         });
//                       },
//                       child: Container(
//                         width: 50,
//                         margin: const EdgeInsets.symmetric(horizontal: 6),
//                         decoration: BoxDecoration(
//                           color: isSelected
//                               ? const Color(0xFF2EE6A8)
//                               : Colors.transparent,
//                           borderRadius: BorderRadius.circular(25),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               days[index],
//                               style: TextStyle(
//                                   color:
//                                       isSelected ? Colors.black : Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16),
//                             ),
//                             Text(
//                               weekDays[index],
//                               style: TextStyle(
//                                   color:
//                                       isSelected ? Colors.black : Colors.grey),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),

//               const SizedBox(height: 20),
//               // White container section
//               _buildSection(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     children: [
//                       // "Your Attendance" header
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: const [
//                           Text(
//                             "Your Attendance",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           Text(
//                             "See more",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.green,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 16),

//                       // Attendance cards
//                       Row(
//                         children: [
//                           Expanded(
//                             child: _buildAttendanceCard(
//                               title: "Check In",
//                               time: "07:30",
//                               status: "On Time",
//                               icon: Icons.login,
//                               iconColor: Colors.green,
//                             ),
//                           ),
//                           const SizedBox(width: 12),
//                           Expanded(
//                             child: _buildAttendanceCard(
//                               title: "Check Out",
//                               time: "Not Yet",
//                               status: "Start at 17:00",
//                               icon: Icons.logout,
//                               iconColor: Colors.red,
//                             ),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 20),
//                       // Inside the Column in _buildSection child (after const SizedBox(height: 20),)

// // Attendance summary container
//                       Container(
//                         padding: const EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.05),
//                               blurRadius: 6,
//                               offset: const Offset(0, 3),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: const [
//                                 Text(
//                                   "Attendance",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 Text(
//                                   "View All",
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 12),
//                             // Progress bar
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: LinearProgressIndicator(
//                                 value: (24 + 10 + 4) /
//                                     31, // sample progress calculation
//                                 minHeight: 10,
//                                 backgroundColor: Colors.grey.shade300,
//                                 valueColor:
//                                     AlwaysStoppedAnimation<Color>(Colors.green),
//                               ),
//                             ),
//                             const SizedBox(height: 16),
//                             // Stats row
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 _buildStatItem(
//                                     Colors.green, "Working Days", "24"),
//                                 _buildStatItem(Colors.blue, "WFH", "10"),
//                                 _buildStatItem(Colors.amber, "Half day", "4"),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
// // Inside Column after the Attendance Summary container

//                       const SizedBox(height: 20),

// // Today's Event section
//                       Container(
//                         padding: const EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.05),
//                               blurRadius: 6,
//                               offset: const Offset(0, 3),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Today's Event",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             const SizedBox(height: 12),
//                             _buildEventCard(
//                               "Office Seminar event with niagahoster, Yogyakarta",
//                               "08.00 - 11.00 AM",
//                               "The Soed's",
//                             ),
//                             const SizedBox(height: 12),
//                             _buildEventCard(
//                               "Office Seminar event with niagahoster, Yogyakarta",
//                               "08.00 - 11.00 AM",
//                               "The Soed's",
//                             ),
//                           ],
//                         ),
//                       ),

//                       // // Your original punch-in/out section
//                       // _buildPunchIn(
//                       //     "Punch in at: Fri, 15th Dec 2024, 10:31 AM"),
//                       // _buildTimeInfo("03 : 59 : 41", "total Work Time"),
//                       // _buildClockTimes(),
//                       // _buildActionButtons(),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildEventCard(String title, String time, String location) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: 4,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(2),
//                 ),
//               ),
//               const SizedBox(width: 8),
//               Expanded(
//                 child: Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               const Icon(Icons.access_time, size: 14, color: Colors.grey),
//               const SizedBox(width: 4),
//               Text(
//                 time,
//                 style: const TextStyle(fontSize: 12, color: Colors.grey),
//               ),
//               const SizedBox(width: 16),
//               const Icon(Icons.location_on, size: 14, color: Colors.red),
//               const SizedBox(width: 4),
//               Text(
//                 location,
//                 style: const TextStyle(fontSize: 12, color: Colors.red),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStatItem(Color dotColor, String label, String value) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade300),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Icon(Icons.circle, size: 10, color: dotColor),
//               const SizedBox(width: 6),
//               Text(
//                 label,
//                 style: const TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.black54,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 4),
//           Text(
//             value,
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSection({required Widget child}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 30),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(50), topRight: Radius.circular(50)),
//           color: fifth,
//         ),
//         width: MediaQuery.sizeOf(context).width,
//         height: MediaQuery.sizeOf(context).height / 1,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30, bottom: 30),
//           child: child,
//         ),
//       ),
//     );
//   }

//   static Widget _buildAttendanceCard({
//     required String title,
//     required String time,
//     required String status,
//     required IconData icon,
//     required Color iconColor,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Color(0xFFF6F6F6),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(icon, color: iconColor, size: 20),
//               const SizedBox(width: 8),
//               Text(
//                 title,
//                 style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Text(
//             time,
//             style: const TextStyle(
//                 color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             status,
//             style: TextStyle(color: iconColor, fontSize: 14),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildPunchIn(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: Container(
//         height: 60,
//         width: 250,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(color: primary),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               text,
//               style: const TextStyle(
//                   color: Colors.black, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTimeInfo(String time, String label) {
//     return Column(
//       children: [
//         const SizedBox(height: 5),
//         Text(
//           time,
//           style: TextStyle(
//               color: fouth, fontSize: 22, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           label,
//           style: const TextStyle(
//               color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
//         ),
//         const SizedBox(height: 15),
//       ],
//     );
//   }

//   Widget _buildClockTimes() {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10),
//       child: Column(
//         children: [
//           Row(
//             children: const [
//               Text(
//                 "Clock In time:",
//                 style:
//                     TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(width: 50),
//               Text(
//                 "Clock Out time:",
//                 style:
//                     TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               const Text("10:31:36", style: TextStyle(color: Colors.red)),
//               const SizedBox(width: 100),
//               Text(
//                 "--:--:--",
//                 style: TextStyle(color: fouth, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           const SizedBox(height: 15),
//         ],
//       ),
//     );
//   }

//   Widget _buildActionButtons() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildButton('Punch in'),
//           const SizedBox(width: 55),
//           _buildButton('Punch Out'),
//         ],
//       ),
//     );
//   }

//   Widget _buildButton(String label) {
//     return Container(
//       width: MediaQuery.sizeOf(context).width / 3.9,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(33),
//         gradient: LinearGradient(
//             colors: [primary, fouth],
//             begin: Alignment.topCenter,
//             end: Alignment.centerRight),
//       ),
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(Colors.transparent),
//           shadowColor: MaterialStateProperty.all(Colors.transparent),
//         ),
//         child: Text(
//           label,
//           style: const TextStyle(
//               color: Colors.white, fontWeight: FontWeight.w800, fontSize: 10),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  int selectedDayIndex = 0;
  final List<String> days = ["28", "29", "30", "1", "2", "3", "4"];
  final List<String> weekDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              _buildHeader(),
              const SizedBox(height: 20),
              _buildDatePicker(),
              const SizedBox(height: 20),
              _buildSection(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      _buildSectionHeader("Your Attendance", "See more"),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: _buildAttendanceCard(
                              title: "Check In",
                              time: "07:30",
                              status: "On Time",
                              icon: Icons.login,
                              iconColor: Colors.green,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _buildAttendanceCard(
                              title: "Check Out",
                              time: "Not Yet",
                              status: "Start at 17:00",
                              icon: Icons.logout,
                              iconColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      _buildAttendanceSummary(),
                      const SizedBox(height: 20),
                      _buildTodaysEvent(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildHeader() {
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           const Spacer(),
  //           const Text(
  //             "Mar 2023",
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //           const Spacer(),
  //           Container(
  //             decoration: BoxDecoration(
  //               shape: BoxShape.circle,
  //               border: Border.all(color: fifth),
  //             ),
  //             child: IconButton(
  //               onPressed: () {},
  //               icon: Icon(Icons.calendar_month, color: fifth),
  //             ),
  //           ),
  //         ],
  //       ),
  //       const SizedBox(height: 4),
  //       const Text(
  //         "Wed, 8 March 2023",
  //         style: TextStyle(
  //           color: Colors.white70,
  //           fontSize: 14,
  //         ),
  //       ),
  //     ],
  //   );
  // }
Widget _buildHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Mar 2023",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Wed, 8 March 2023",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white30, width: 1.5),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

  Widget _buildDatePicker() {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: days.length,
        itemBuilder: (context, index) {
          bool isSelected = index == selectedDayIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedDayIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: 55,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF2EE6A8) : Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: isSelected ? Colors.transparent : Colors.white24,
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    days[index],
                    style: TextStyle(
                      color: isSelected ? Colors.black : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    weekDays[index],
                    style: TextStyle(
                      color: isSelected ? Colors.black : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader(String title, String action) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          action,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildAttendanceSummary() {
    return _buildCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Attendance", "View All"),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: (24 + 10 + 4) / 31,
              minHeight: 10,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatItem(Colors.green, "Working Days", "24"),
              _buildStatItem(Colors.blue, "WFH", "10"),
              _buildStatItem(Colors.amber, "Half day", "4"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTodaysEvent() {
    return _buildCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Today's Event",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          _buildEventCard(
            "Office Seminar event with niagahoster, Yogyakarta",
            "08.00 - 11.00 AM",
            "The Soed's",
          ),
          const SizedBox(height: 12),
          _buildEventCard(
            "Office Seminar event with niagahoster, Yogyakarta",
            "08.00 - 11.00 AM",
            "The Soed's",
          ),
        ],
      ),
    );
  }

  Widget _buildCard({required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }

  Widget _buildEventCard(String title, String time, String location) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.access_time, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              const SizedBox(width: 16),
              const Icon(Icons.location_on, size: 14, color: Colors.red),
              const SizedBox(width: 4),
              Text(location, style: const TextStyle(fontSize: 12, color: Colors.red)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(Color dotColor, String label, String value) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.circle, size: 10, color: dotColor),
            const SizedBox(width: 6),
            Text(label, style: const TextStyle(fontSize: 12, color: Colors.black54)),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildSection({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: fifth,
        ),
        width: MediaQuery.sizeOf(context).width,height: MediaQuery.sizeOf(context).height/1.1,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: child,
        ),
      ),
    );
  }

  static Widget _buildAttendanceCard({
    required String title,
    required String time,
    required String status,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 20),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            time,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(status, style: TextStyle(color: iconColor, fontSize: 14)),
        ],
      ),
    );
  }
}
// aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa