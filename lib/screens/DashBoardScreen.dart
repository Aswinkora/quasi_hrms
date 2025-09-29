// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/DutyRosterScreen.dart';
// import 'package:hrms/screens/leave.dart';
// import 'package:hrms/screens/salary.dart';

// class DashBoardScreen extends StatefulWidget {
//   const DashBoardScreen({super.key});

//   @override
//   State<DashBoardScreen> createState() => _DashBoardScreenState();
// }

// class _DashBoardScreenState extends State<DashBoardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             //
//             height: MediaQuery.sizeOf(context).height,
//             width: MediaQuery.sizeOf(context).width,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: <Color>[fouth, Colors.black],
//               ),
//             ),
//             child: Stack(children: [
//               Padding(
//                   padding: const EdgeInsets.only(top: 200),
//                   child: Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(50),
//                               topLeft: Radius.circular(50)),
//                           color: fifth),
//                       height: MediaQuery.sizeOf(context).height / 1,
//                       width: MediaQuery.sizeOf(context).width,
//                       child: Column(children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 20),
//                           child: Row(
//                             children: [
//                               Text(
//                                 "Today's Overview",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w800, fontSize: 18),
//                               ),
//                               SizedBox(
//                                 width: 150,
//                               ),
//                               IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(
//                                     Icons.more_horiz,
//                                     size: 25,
//                                   ))
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 0),
//                           child: Container(
//                             height: 140,
//                             width: MediaQuery.sizeOf(context).width / 1.15,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(25),
//                               gradient: LinearGradient(
//                                 begin: Alignment.centerLeft,
//                                 end: Alignment.centerRight,
//                                 colors: <Color>[primary, secondary],
//                               ),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.only(
//                                   top: 20, left: 10, right: 10),
//                               child: Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: [
//                                       Text(
//                                         "3 May, 2024",
//                                         style: TextStyle(
//                                             color: fifth,
//                                             fontWeight: FontWeight.w800,
//                                             fontSize: 18),
//                                       ),
//                                       SizedBox(
//                                         width: 100,
//                                       ),
//                                       Container(
//                                         height: 25,
//                                         width: 75,
//                                         child: Center(
//                                             child: Text(
//                                           "8:45 AM",
//                                           style: TextStyle(color: secondary),
//                                         )),
//                                         decoration: BoxDecoration(
//                                             color: fifth,
//                                             borderRadius:
//                                                 BorderRadius.circular(20)),
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Container(
//                                     height: 70,
//                                     width:
//                                         MediaQuery.sizeOf(context).width / 1.3,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20),
//                                         color: const Color.fromARGB(
//                                             37, 248, 247, 247)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                           top: 10, left: 27),
//                                       child: Column(
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Text(
//                                                 "Check In",
//                                                 style: TextStyle(
//                                                   color: const Color.fromARGB(
//                                                       255, 181, 176, 176),
//                                                   fontSize: 16,
//                                                 ),
//                                               ),
//                                               SizedBox(
//                                                 width: 90,
//                                               ),
//                                               Text(
//                                                 "Check Out",
//                                                 style: TextStyle(
//                                                     color: const Color.fromARGB(
//                                                         255, 181, 176, 176),
//                                                     fontSize: 16),
//                                               )
//                                             ],
//                                           ),
//                                           Row(
//                                             children: [
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.only(),
//                                                 child: Text(
//                                                   "08:00 AM",
//                                                   style: TextStyle(
//                                                       color: fifth,
//                                                       fontSize: 20,
//                                                       fontWeight:
//                                                           FontWeight.w800),
//                                                 ),
//                                               ),
//                                               SizedBox(
//                                                 width: 65,
//                                               ),
//                                               Text(
//                                                 "05:00 PM",
//                                                 style: TextStyle(
//                                                     color: fifth,
//                                                     fontSize: 20,
//                                                     fontWeight:
//                                                         FontWeight.w800),
//                                               )
//                                             ],
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 30),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   DutyRosterScreen()));
//                                     },
//                                     child: Container(
//                                       height: 75,
//                                       width: MediaQuery.sizeOf(context).width /
//                                           2.5,
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           color: fifth,
//                                           border: Border.all(color: primary)),
//                                       child: Row(
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: Container(
//                                               height: 30,
//                                               width: 30,
//                                               decoration: BoxDecoration(
//                                                   shape: BoxShape.circle,
//                                                   color: primary),
//                                               child: Icon(
//                                                 Icons.timelapse_outlined,
//                                                 color: fifth,
//                                                 size: 16,
//                                               ),
//                                             ),
//                                           ),
//                                           Text(
//                                             "Duty Roster",
//                                             style: TextStyle(
//                                                 color: fouth,
//                                                 fontWeight: FontWeight.w800),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) => Leave()));
//                                     },
//                                     child: Container(
//                                       height: 75,
//                                       width: MediaQuery.sizeOf(context).width /
//                                           2.5,
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           color: fifth,
//                                           border: Border.all(color: primary)),
//                                       child: Row(
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: Container(
//                                               height: 30,
//                                               width: 30,
//                                               decoration: BoxDecoration(
//                                                   shape: BoxShape.circle,
//                                                   color: fouth),
//                                               child: Icon(
//                                                 Icons.leave_bags_at_home,
//                                                 color: fifth,
//                                                 size: 16,
//                                               ),
//                                             ),
//                                           ),
//                                           Text(
//                                             "Leave",
//                                             style: TextStyle(
//                                                 color: fouth,
//                                                 fontWeight: FontWeight.w800),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 15,
//                               ),
//                               Row(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) => Salary()));
//                                     },
//                                     child: Container(
//                                       height: 75,
//                                       width: MediaQuery.sizeOf(context).width /
//                                           2.5,
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           color: fifth,
//                                           border: Border.all(color: primary)),
//                                       child: Row(
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: Container(
//                                               height: 30,
//                                               width: 30,
//                                               decoration: BoxDecoration(
//                                                   shape: BoxShape.circle,
//                                                   color: third),
//                                               child: Icon(
//                                                 Icons.currency_rupee,
//                                                 color: fifth,
//                                                 size: 16,
//                                               ),
//                                             ),
//                                           ),
//                                           Text(
//                                             "Salary",
//                                             style: TextStyle(
//                                                 color: fouth,
//                                                 fontWeight: FontWeight.w800),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 75,
//                                     width:
//                                         MediaQuery.sizeOf(context).width / 2.5,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20),
//                                         color: fifth,
//                                         border: Border.all(color: primary)),
//                                     child: Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Container(
//                                             height: 30,
//                                             width: 30,
//                                             decoration: BoxDecoration(
//                                                 shape: BoxShape.circle,
//                                                 color: secondary),
//                                             child: Icon(
//                                               Icons.format_list_bulleted,
//                                               color: fifth,
//                                               size: 16,
//                                             ),
//                                           ),
//                                         ),
//                                         Text(
//                                           "Letters",
//                                           style: TextStyle(
//                                               color: fouth,
//                                               fontWeight: FontWeight.w800),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                           height: 140,
//                           width: MediaQuery.sizeOf(context).width / 1.2,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: fifth,
//                               border: Border.all(color: primary)),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 10, top: 10),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Notifications",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontWeight: FontWeight.w800,
//                                           fontSize: 16),
//                                     ),
//                                     SizedBox(
//                                       width: 155,
//                                     ),
//                                     Text(
//                                       "See All",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 12,
//                                           color: secondary),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 15,
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       Icons.groups,
//                                       size: 20,
//                                       color: primary,
//                                     ),
//                                     SizedBox(
//                                       width: 18,
//                                     ),
//                                     Column(
//                                       children: [
//                                         Text(
//                                           "Group Interview",
//                                           style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         Text(
//                                           "12:00 PM - 01:00 PM",
//                                           style: TextStyle(
//                                               color: Colors.grey,
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.bold),
//                                         )
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: 85,
//                                     ),
//                                     IconButton(
//                                         onPressed: () {},
//                                         icon: Icon(
//                                           Icons.more_vert,
//                                           size: 20,
//                                         ))
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 15,
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       Icons.meeting_room,
//                                       size: 20,
//                                       color: primary,
//                                     ),
//                                     // SizedBox(
//                                     //   width: 18,
//                                     // ),
//                                     Column(
//                                       children: [
//                                         Text(
//                                           "HR Meeting",
//                                           style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         Text(
//                                           "03:00 PM - 04:00 PM",
//                                           style: TextStyle(
//                                               color: Colors.grey,
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.bold),
//                                         )
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: 85,
//                                     ),
//                                     IconButton(
//                                         onPressed: () {},
//                                         icon: Icon(
//                                           Icons.more_vert,
//                                           size: 20,
//                                         ))
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ])))
//             ])));
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/DutyRosterScreen.dart';
// import 'package:hrms/screens/SettingsScreen.dart';
// import 'package:hrms/screens/leave.dart';
// import 'package:hrms/screens/salary.dart';

// class DashBoardScreen extends StatefulWidget {
//   const DashBoardScreen({super.key});

//   @override
//   State<DashBoardScreen> createState() => _DashBoardScreenState();
// }

// class _DashBoardScreenState extends State<DashBoardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(children: [
//       // Background gradient
//       DecoratedBox(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [fouth, Colors.black], // Choose your gradient colors
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, top: 50),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => SettingsScreen()));
//                     },
//                     child: CircleAvatar(
//                       radius: 25,
//                       backgroundImage: AssetImage(
//                         "assets/images/deepak.png",
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 50),
//                         child: Text(
//                           "Deepak Namarath",
//                           style: TextStyle(
//                               color: fifth, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Text(
//                         "Human Resource Manager",
//                         style: TextStyle(color: Colors.grey),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     width: 70,
//                   ),
//                   Container(
//                     height: 35,
//                     width: 35,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle, color: Colors.grey),
//                     child: Icon(
//                       Icons.notifications_none_sharp,
//                       color: fifth,
//                       size: 15,
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 130),
//                 child: Text(
//                   "Welcome! Refreshing Monday",
//                   style: TextStyle(
//                       color: fifth, fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(height: 5),
//               Padding(
//                 padding: const EdgeInsets.only(right: 82),
//                 child: Text(
//                   "Great Companies are built by great people",
//                   style: TextStyle(
//                       color: Colors.grey, fontWeight: FontWeight.bold),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       // White screen from bottom
//       Positioned(
//           top: 190,
//           bottom: 0,
//           left: 0,
//           right: 0,
//           child: Container(
//             decoration: BoxDecoration(
//                 color: fifth,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30))),
//             height: MediaQuery.sizeOf(context)
//                 .height, // Adjust the height to your preference
//             child: Column(children: [
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                   padding: const EdgeInsets.only(left: 25),
//                   child: Row(
//                     children: [
//                       Text(
//                         "Today's Overview",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w800, fontSize: 18),
//                       ),
//                       SizedBox(
//                         width: 145,
//                       ),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.more_horiz,
//                             size: 25,
//                           ))
//                     ],
//                   )),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 0),
//                 child: Container(
//                   height: 140,
//                   width: MediaQuery.sizeOf(context).width / 1.15,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25),
//                     gradient: LinearGradient(
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight,
//                       colors: <Color>[primary, secondary],
//                     ),
//                   ),
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(top: 20, left: 10, right: 10),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Text(
//                               "3 May, 2024",
//                               style: TextStyle(
//                                   color: fifth,
//                                   fontWeight: FontWeight.w800,
//                                   fontSize: 18),
//                             ),
//                             SizedBox(
//                               width: 100,
//                             ),
//                             Container(
//                               height: 25,
//                               width: 75,
//                               child: Center(
//                                   child: Text(
//                                 "8:45 AM",
//                                 style: TextStyle(color: secondary),
//                               )),
//                               decoration: BoxDecoration(
//                                   color: fifth,
//                                   borderRadius: BorderRadius.circular(20)),
//                             )
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           height: 70,
//                           width: MediaQuery.sizeOf(context).width / 1.3,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: const Color.fromARGB(37, 248, 247, 247)),
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 10, left: 27),
//                             child: Column(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       "Check In",
//                                       style: TextStyle(
//                                         color: const Color.fromARGB(
//                                             255, 181, 176, 176),
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 90,
//                                     ),
//                                     Text(
//                                       "Check Out",
//                                       style: TextStyle(
//                                           color: const Color.fromARGB(
//                                               255, 181, 176, 176),
//                                           fontSize: 16),
//                                     )
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(),
//                                       child: Text(
//                                         "08:00 AM",
//                                         style: TextStyle(
//                                             color: fifth,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.w800),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 65,
//                                     ),
//                                     Text(
//                                       "05:00 PM",
//                                       style: TextStyle(
//                                           color: fifth,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w800),
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 30),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => DutyRosterScreen()));
//                           },
//                           child: Container(
//                             height: 75,
//                             width: MediaQuery.sizeOf(context).width / 2.5,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: fifth,
//                                 border: Border.all(color: primary)),
//                             child: Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: 30,
//                                     width: 30,
//                                     decoration: BoxDecoration(
//                                         shape: BoxShape.circle, color: primary),
//                                     child: Icon(
//                                       Icons.timelapse_outlined,
//                                       color: fifth,
//                                       size: 16,
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   "Duty Roster",
//                                   style: TextStyle(
//                                       color: fouth,
//                                       fontWeight: FontWeight.w800),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Leave()));
//                           },
//                           child: Container(
//                             height: 75,
//                             width: MediaQuery.sizeOf(context).width / 2.5,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: fifth,
//                                 border: Border.all(color: primary)),
//                             child: Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: 30,
//                                     width: 30,
//                                     decoration: BoxDecoration(
//                                         shape: BoxShape.circle, color: fouth),
//                                     child: Icon(
//                                       Icons.leave_bags_at_home,
//                                       color: fifth,
//                                       size: 16,
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   "Leave",
//                                   style: TextStyle(
//                                       color: fouth,
//                                       fontWeight: FontWeight.w800),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Salary()));
//                           },
//                           child: Container(
//                             height: 75,
//                             width: MediaQuery.sizeOf(context).width / 2.5,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: fifth,
//                                 border: Border.all(color: primary)),
//                             child: Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: 30,
//                                     width: 30,
//                                     decoration: BoxDecoration(
//                                         shape: BoxShape.circle, color: third),
//                                     child: Icon(
//                                       Icons.currency_rupee,
//                                       color: fifth,
//                                       size: 16,
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   "Salary",
//                                   style: TextStyle(
//                                       color: fouth,
//                                       fontWeight: FontWeight.w800),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Container(
//                           height: 75,
//                           width: MediaQuery.sizeOf(context).width / 2.5,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: fifth,
//                               border: Border.all(color: primary)),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(
//                                   height: 30,
//                                   width: 30,
//                                   decoration: BoxDecoration(
//                                       shape: BoxShape.circle, color: secondary),
//                                   child: Icon(
//                                     Icons.format_list_bulleted,
//                                     color: fifth,
//                                     size: 16,
//                                   ),
//                                 ),
//                               ),
//                               Text(
//                                 "Letters",
//                                 style: TextStyle(
//                                     color: fouth, fontWeight: FontWeight.w800),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 height: 140,
//                 width: MediaQuery.sizeOf(context).width / 1.2,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: fifth,
//                     border: Border.all(color: primary)),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10, top: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Notifications",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w800,
//                                 fontSize: 16),
//                           ),
//                           SizedBox(
//                             width: 155,
//                           ),
//                           Text(
//                             "See All",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12,
//                                 color: secondary),
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 15,
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.groups,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 18,
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 "Group Interview",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 "12:00 PM - 01:00 PM",
//                                 style: TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 85,
//                           ),
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.more_vert,
//                                 size: 20,
//                               ))
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 15,
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.meeting_room,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 18,
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 "HR Meeting",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 "03:00 PM - 04:00 PM",
//                                 style: TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 85,
//                           ),
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.more_vert,
//                                 size: 20,
//                               ))
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ]),
//           ))
//     ]));
//   }
// }
// main codee 
// import 'package:flutter/material.dart';
// import 'package:hrms/components/menudetails.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/DutyRosterScreen.dart';
// import 'package:hrms/screens/Leave/leavemain.dart';
// import 'package:hrms/screens/LetterScreen.dart';
// import 'package:hrms/screens/SettingsScreen.dart';
// import 'package:hrms/screens/salary/salarymain.dart';

// class DashBoardScreen extends StatefulWidget {
//   const DashBoardScreen({super.key});

//   @override
//   State<DashBoardScreen> createState() => _DashBoardScreenState();
// }

// class _DashBoardScreenState extends State<DashBoardScreen> {
//   bool _isMenuOpen = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: GestureDetector(
//       onHorizontalDragUpdate: (details) {
//         if (details.primaryDelta! < -10) {
//           setState(() {
//             _isMenuOpen = true;
//           });
//         } else if (details.primaryDelta! > 10) {
//           setState(() {
//             _isMenuOpen = false;
//           });
//         }
//       },
//       child: Stack(children: [
//         // Background gradient
//         DecoratedBox(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [fouth, Colors.black], // Choose your gradient colors
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20, top: 50,),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => SettingsScreen()));
//                       },
//                       child: CircleAvatar(
//                         radius: 30,
//                         backgroundImage: AssetImage(
//                           "assets/images/deepak.png",
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(right: 50),
//                           child: Text(
//                             "Deepak Namarath",
//                             style: TextStyle(
//                                 color: fifth, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         Text(
//                           "Human Resource Manager",
//                           style: TextStyle(color: Colors.grey),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       width: MediaQuery.sizeOf(context).width/7.5,
//                     ),
//                     Container(
//                       height: 35,
//                       width: 35,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle, color: Colors.grey),
//                       child: Icon(
//                         Icons.notifications_none_sharp,
//                         color: fifth,
//                         size: 15,
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 130),
//                   child: Text(
//                     "Welcome! Refreshing Monday",
//                     style: TextStyle(
//                         color: fifth,
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 82),
//                   child: Text(
//                     "Great Companies are built by great people",
//                     style: TextStyle(
//                         color: Colors.grey, fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         // White screen from bottom
//         Positioned(
//             top: MediaQuery.sizeOf(context).height/4,
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               decoration: BoxDecoration(
//                   color: fifth,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40))),
//               height: MediaQuery.sizeOf(context)
//                   .height, // Adjust the height to your preference
//               child: SingleChildScrollView(
//                 child: Column(children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Row(
//                         children: [
//                           Text(
//                             "Today's Overview",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w800, fontSize: 18),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/2.7,
//                           ),
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.more_horiz,
//                                 size: 25,
//                               ))
//                         ],
//                       )),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 0),
//                     child: Container(
//                       height: 140,
//                       width: MediaQuery.sizeOf(context).width / 1.15,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(25),
//                         gradient: LinearGradient(
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                           colors: <Color>[primary, secondary],
//                         ),
//                       ),
//                       child: Padding(
//                         padding:
//                             const EdgeInsets.only(top: 20, left: 10, right: 10),
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 10,right: 10),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Text(
//                                     "3 May, 2024",
//                                     style: TextStyle(
//                                         color: fifth,
//                                         fontWeight: FontWeight.w800,
//                                         fontSize: 18),
//                                   ),
//                                   SizedBox(
//                                     width: 100,
//                                   ),
//                                   Container(
//                                     height: 25,
//                                     width: 75,
//                                     child: Center(
//                                         child: Text(
//                                       "8:45 AM",
//                                       style: TextStyle(color: secondary,fontWeight: FontWeight.bold),
//                                     )),
//                                     decoration: BoxDecoration(
//                                         color: fifth,
//                                         borderRadius: BorderRadius.circular(20)),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Container(
//                               height: 70,
//                               width: MediaQuery.sizeOf(context).width / 1.3,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: const Color.fromARGB(37, 248, 247, 247)),
//                               child: Padding(
//                                 padding: const EdgeInsets.only(top: 10, left: 22),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Check In",
//                                           style: TextStyle(
//                                             color: const Color.fromARGB(
//                                                 255, 181, 176, 176),
//                                             fontSize: 16,
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           width: 90,
//                                         ),
//                                         Text(
//                                           "Check Out",
//                                           style: TextStyle(
//                                               color: const Color.fromARGB(
//                                                   255, 181, 176, 176),
//                                               fontSize: 16),
//                                         )
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(),
//                                           child: Text(
//                                             "08:00 AM",
//                                             style: TextStyle(
//                                                 color: fifth,
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.w800),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           width: MediaQuery.sizeOf(context).width/7,
//                                         ),
//                                         Text(
//                                           "05:00 PM",
//                                           style: TextStyle(
//                                               color: fifth,
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.w800),
//                                         )
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 32),
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             DutyRosterScreen()));
//                               },
//                               child: Container(
//                                 height: 75,
//                                 width: MediaQuery.sizeOf(context).width / 2.5,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: fifth,
//                                     border: Border.all(color: primary)),
//                                 child: Row(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Container(
//                                         height: 30,
//                                         width: 30,
//                                         decoration: BoxDecoration(
//                                             shape: BoxShape.circle,
//                                             color: primary),
//                                         child: Icon(
//                                           Icons.timelapse_outlined,
//                                           color: fifth,
//                                           size: 16,
//                                         ),
//                                       ),
//                                     ),
//                                     Text(
//                                       "Duty Roster",
//                                       style: TextStyle(
//                                           color: fouth,
//                                           fontWeight: FontWeight.w800),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Leavemain()));
//                               },
//                               child: Container(
//                                 height: 75,
//                                 width: MediaQuery.sizeOf(context).width / 2.5,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: fifth,
//                                     border: Border.all(color: primary)),
//                                 child: Row(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Container(
//                                         height: 30,
//                                         width: 30,
//                                         decoration: BoxDecoration(
//                                             shape: BoxShape.circle, color: fouth),
//                                         child: Icon(
//                                           Icons.leave_bags_at_home,
//                                           color: fifth,
//                                           size: 16,
//                                         ),
//                                       ),
//                                     ),
//                                     Text(
//                                       "Leave",
//                                       style: TextStyle(
//                                           color: fouth,
//                                           fontWeight: FontWeight.w800),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Row(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Salarymain()));
//                               },
//                               child: Container(
//                                 height: 75,
//                                 width: MediaQuery.sizeOf(context).width / 2.5,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: fifth,
//                                     border: Border.all(color: primary)),
//                                 child: Row(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Container(
//                                         height: 30,
//                                         width: 30,
//                                         decoration: BoxDecoration(
//                                             shape: BoxShape.circle, color: third),
//                                         child: Icon(
//                                           Icons.currency_rupee,
//                                           color: fifth,
//                                           size: 16,
//                                         ),
//                                       ),
//                                     ),
//                                     Text(
//                                       "Salary",
//                                       style: TextStyle(
//                                           color: fouth,
//                                           fontWeight: FontWeight.w800),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LetterScreen()));
//                               },
//                               child: Container(
//                                 height: 75,
//                                 width: MediaQuery.sizeOf(context).width / 2.5,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: fifth,
//                                     border: Border.all(color: primary)),
//                                 child: Row(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Container(
//                                         height: 30,
//                                         width: 30,
//                                         decoration: BoxDecoration(
//                                             shape: BoxShape.circle,
//                                             color: secondary),
//                                         child: Icon(
//                                           Icons.format_list_bulleted,
//                                           color: fifth,
//                                           size: 16,
//                                         ),
//                                       ),
//                                     ),
//                                     Text(
//                                       "Letters",
//                                       style: TextStyle(
//                                           color: fouth,
//                                           fontWeight: FontWeight.w800),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     height: 140,
//                     width: MediaQuery.sizeOf(context).width / 1.2,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: fifth,
//                         border: Border.all(color: primary)),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 10, top: 10),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Notifications",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.w800,
//                                     fontSize: 16),
//                               ),
//                               SizedBox(
//                                 width: MediaQuery.sizeOf(context).width/2.65,
//                               ),
//                               Text(
//                                 "See All",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 12,
//                                     color: secondary),
//                               )
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 15,
//                           ),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.groups,
//                                 size: 20,
//                                 color: primary,
//                               ),
//                               SizedBox(
//                                 width: 18,
//                               ),
//                               Column(
//                                 children: [
//                                   Text(
//                                     "Group Interview",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "12:00 PM - 01:00 PM",
//                                     style: TextStyle(
//                                         color: Colors.grey,
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.bold),
//                                   )
//                                 ],
//                               ),
//                               SizedBox(
//                                 width: 85,
//                               ),
//                               IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(
//                                     Icons.more_vert,
//                                     size: 20,
//                                   ))
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 15,
//                           ),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.meeting_room,
//                                 size: 20,
//                                 color: primary,
//                               ),
//                               SizedBox(
//                                 width: 18,
//                               ),
//                               Column(
//                                 children: [
//                                   Text(
//                                     "HR Meeting",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "03:00 PM - 04:00 PM",
//                                     style: TextStyle(
//                                         color: Colors.grey,
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.bold),
//                                   )
//                                 ],
//                               ),
//                               SizedBox(
//                                 width: 85,
//                               ),
//                               IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(
//                                     Icons.more_vert,
//                                     size: 20,
//                                   ))
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ]),
//               ),
//             )),
//         if (_isMenuOpen) Menudetails(isopen: _isMenuOpen)
//       ]),
//     ));
//   }
// }
//////////
// import 'package:flutter/material.dart';
// import 'package:hrms/components/menudetails.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/DutyRosterScreen.dart';
// import 'package:hrms/screens/Leave/leavemain.dart';
// import 'package:hrms/screens/LetterScreen.dart';
// import 'package:hrms/screens/SettingsScreen.dart';
// import 'package:hrms/screens/TrainingScreen.dart';
// import 'package:hrms/screens/salary/salarymain.dart';

// class DashBoardScreen extends StatefulWidget {
//   const DashBoardScreen({super.key});

//   @override
//   State<DashBoardScreen> createState() => _DashBoardScreenState();
// }

// class _DashBoardScreenState extends State<DashBoardScreen> {
//   bool _isMenuOpen = false;
//   int _selectedIndex = 0;

//   late List<Widget> _pages;

//   @override
//   void initState() {
//     super.initState();
//     _pages = [
//       DashBoardScreen() ,
//      TrainingScreen(),
//       const Center(child: Text("Calendar")),
//       const Center(child: Text("Profile")),
//     ];
//   }

//   Widget _buildDashboardHome() {
//     return GestureDetector(
//       onHorizontalDragUpdate: (details) {
//         if (details.primaryDelta! < -10) {
//           setState(() => _isMenuOpen = true);
//         } else if (details.primaryDelta! > 10) {
//           setState(() => _isMenuOpen = false);
//         }
//       },
//       child: Stack(
//         children: [
//           // Your existing dashboard layout here:
//           Column(
//             children: [
//               Container(
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: primary,
//                   borderRadius: const BorderRadius.vertical(
//                     bottom: Radius.circular(30),
//                   ),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     "Dashboard Header",
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Expanded(
//                 child: Center(
//                   child: Text("Dashboard Content Here"),
//                 ),
//               ),
//             ],
//           ),
//           if (_isMenuOpen) Menudetails(isopen: _isMenuOpen),
//         ],
//       ),
//     );
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       body: _pages[_selectedIndex],

//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(30),
//           child: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: Colors.white,
//             selectedItemColor: primary,
//             unselectedItemColor: Colors.grey,
//             currentIndex: _selectedIndex,
//             onTap: _onItemTapped,
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home_outlined),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.chat_bubble_outline),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.calendar_month_outlined),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person_outline),
//                 label: '',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/components/menudetails.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/AttendanceScreen.dart';
// import 'package:hrms/screens/DutyRosterScreen.dart';
// import 'package:hrms/screens/Leave/leavemain.dart';
// import 'package:hrms/screens/LetterScreen.dart';
// import 'package:hrms/screens/SettingsScreen.dart';
// import 'package:hrms/screens/TrainingScreen.dart';
// import 'package:hrms/screens/salary/salarymain.dart';
// // import 'package:flutter_svg/flutter_svg.dart';

// class DashBoardScreen extends StatefulWidget {
//   const DashBoardScreen({super.key});

//   @override
//   State<DashBoardScreen> createState() => _DashBoardScreenState();
// }

// class _DashBoardScreenState extends State<DashBoardScreen> {
//   bool _isMenuOpen = false;
//   int _selectedIndex = 0; // New state variable for the selected tab

//   // List of widgets to display for each tab
//   static const List<Widget> _widgetOptions = <Widget>[
//     DashboardContent(), // The main dashboard content
//     TrainingScreen(), // Placeholder for the Leave screen
//     AttendanceScreen(), // Placeholder for the Calendar screen
//     SettingsScreen(), // Placeholder for the Profile screen
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onHorizontalDragUpdate: (details) {
//           if (details.primaryDelta! < -10) {
//             setState(() {
//               _isMenuOpen = true;
//             });
//           } else if (details.primaryDelta! > 10) {
//             setState(() {
//               _isMenuOpen = false;
//             });
//           }
//         },
//         child: Stack(
//           children: [
//             // Background gradient
//             DecoratedBox(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [fouth, Colors.black],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20, top: 50,bottom: 70),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => SettingsScreen(),
//                               ),
//                             );
//                           },
//                           child: CircleAvatar(
//                             radius: 30,
//                             backgroundImage: AssetImage(
//                               "assets/images/deepak.png",
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 15,),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Deepak Namarath",
//                               style: TextStyle(
//                                 color: fifth,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               "Human Resource Manager",
//                               style: TextStyle(color: Colors.grey),
//                             ),
//                           ],
//                         ),
//                         Spacer(),
//                         Container(
//                           height: 35,
//                           width: 35,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.grey,
//                           ),
//                           child: Icon(
//                             Icons.notifications_none_sharp,
//                             color: fifth,
//                             size: 15,
//                           ),
//                         ),
//                         SizedBox(width: 20,)
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Welcome! Refreshing Monday",
//                         style: TextStyle(
//                           color: fifth,
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Great Companies are built by great people",
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // White screen from bottom
//             Positioned(
//               top: MediaQuery.sizeOf(context).height / 4,
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: fifth,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                 ),
//                 child: _widgetOptions.elementAt(_selectedIndex), // Display content based on selected tab
//               ),
//             ),
//             if (_isMenuOpen) Menudetails(isopen: _isMenuOpen),
//           ],
//         ),
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   items: const <BottomNavigationBarItem>[
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.home),
//       //       label: 'Home',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.list_alt),
//       //       label: 'Leaves',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.calendar_today),
//       //       label: 'Roster',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.person),
//       //       label: 'Profile',
//       //     ),
//       //   ],
//       //   currentIndex: _selectedIndex,
//       //   selectedItemColor: Colors.blue, // The color for the selected icon
//       //   unselectedItemColor: Colors.grey, // The color for unselected icons
//       //   onTap: _onItemTapped,
//       //   type: BottomNavigationBarType.fixed, // Ensures all items are visible
//       //   backgroundColor: Colors.white, // Background color of the tab bar
//       //   showSelectedLabels: false,
//       //   showUnselectedLabels: false,
//       // ),
//        bottomNavigationBar: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(30),
//           child: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: Colors.white,
//             selectedItemColor: primary,
//             unselectedItemColor: Colors.grey,
//             currentIndex: _selectedIndex,
//             onTap: _onItemTapped,
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home_outlined),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.model_training_outlined),
//                 label: 'Training',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.calendar_month_outlined),
//                 label: 'Attendance',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.settings),
//                 label: 'Settings',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:quasi_hrms/components/menudetails.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/AttendanceScreen.dart';
import 'package:quasi_hrms/screens/DutyRosterScreen.dart';
import 'package:quasi_hrms/screens/Leave/leavemain.dart';
import 'package:quasi_hrms/screens/LetterScreen.dart';
import 'package:quasi_hrms/screens/SettingsScreen.dart';
import 'package:quasi_hrms/screens/TrainingScreen.dart';
import 'package:quasi_hrms/screens/salary/salarymain.dart';
import 'package:quasi_hrms/screens/taskscreen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  bool _isMenuOpen = false;
  int _selectedIndex = 0;

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      _buildDashboardHome(),
      const TrainingScreen(),     // Second tab → Leave screen
      const AttendanceScreen(),    // Third tab → Salary screen
      const SettingsScreen() // Fourth tab → Settings screen
    ];
  }

  Widget _buildDashboardHome() {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.primaryDelta! < -10) {
          setState(() => _isMenuOpen = true);
        } else if (details.primaryDelta! > 10) {
          setState(() => _isMenuOpen = false);
        }
      },
      child: Stack(
        children: [
              // Background gradient
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [fouth, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 50,bottom: 70),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingsScreen(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/images/deepak.png",
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Deepak Namarath",
                              style: TextStyle(
                                color: fifth,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Human Resource Manager",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Icon(
                            Icons.notifications_none_sharp,
                            color: fifth,
                            size: 15,
                          ),
                        ),
                        SizedBox(width: 20,)
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome! Refreshing Monday",
                        style: TextStyle(
                          color: fifth,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Great Companies are built by great people",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // White screen from bottom
            Positioned(
              // top: MediaQuery.sizeOf(context).height / 4,
              top: 200,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: fifth,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: DashboardContent()
              ),
            ),
            if (_isMenuOpen) Menudetails(isopen: _isMenuOpen),
          ],
        ),
      );
    
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // so floating bottom nav overlaps background
      body: _pages[_selectedIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: primary,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.model_training_outlined), // Leave
                label: 'Training',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), // Salary
                label: 'Attendance',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), // Settings
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Separate widget for the dashboard content
class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Overview",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[primary, secondary],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "3 May, 2024",
                          style: TextStyle(
                            color: fifth,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: fifth,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "8:45 AM",
                            style: TextStyle(
                              color: secondary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(37, 248, 247, 247),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Check In",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 181, 176, 176),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "08:00 AM",
                                style: TextStyle(
                                  color: fifth,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Check Out",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 181, 176, 176),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "05:00 PM",
                                style: TextStyle(
                                  color: fifth,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomActionCard(
                      icon: Icons.timelapse_outlined,
                      title: "Duty Roster",
                      color: primary,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DutyRosterScreen(),
                          ),
                        );
                      },
                    ),
                    CustomActionCard(
                      icon: Icons.leave_bags_at_home,
                      title: "Leave",
                      color: fouth,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Leavemain(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomActionCard(
                      icon: Icons.currency_rupee,
                      title: "Salary",
                      color: third,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Salarymain(),
                          ),
                        );
                      },
                    ),
                    CustomActionCard(
                      icon: Icons.format_list_bulleted,
                      title: "Letters",
                      color: secondary,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LetterScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomActionCard(
                      icon: Icons.task,
                      title: "Task",
                      color: const Color.fromARGB(255, 223, 219, 219),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaskScreen(),
                          ),
                        );
                      },
                    ),
                   
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 170,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: fifth,
                border: Border.all(color: primary),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notifications",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: secondary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  NotificationItem(
                    icon: Icons.groups,
                    title: "Group Interview",
                    time: "12:00 PM - 01:00 PM",
                    color: primary,
                  ),
                  NotificationItem(
                    icon: Icons.meeting_room,
                    title: "HR Meeting",
                    time: "03:00 PM - 04:00 PM",
                    color: primary,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 80,),
           
        ],
      ),
    );
  }
}

// Custom widget for the action cards
class CustomActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const CustomActionCard({
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 75,
        width: MediaQuery.sizeOf(context).width / 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: fifth,
          border: Border.all(color: primary),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
                child: Icon(
                  icon,
                  color: fifth,
                  size: 16,
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: fouth,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for notification items
class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String time;
  final Color color;

  const NotificationItem({
    required this.icon,
    required this.title,
    required this.time,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: color,
          ),
          SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}