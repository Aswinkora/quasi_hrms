// import 'package:flutter/material.dart';
// import 'package:hrms/components/appbar.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/DashBoardScreen.dart';
// import 'package:hrms/screens/MenuScreen.dart';
// import 'package:hrms/screens/Notifications.dart';
// import 'package:hrms/screens/Profile.dart';
// import 'package:hrms/screens/ResetPassword.dart'; // Assuming this defines the `primary` color.

// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: fifth,
//        appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60.0),
//         child: customAppbar(),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 80),
//             Center(
//               child: Container(
//                 width: MediaQuery.of(context).size.width / 1.1,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: fifth,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       blurRadius: 8,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Stack(
//                   clipBehavior: Clip.none,
//                   alignment: Alignment.topCenter,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 50),
//                       child: Column(
//                         children: [
//                           SizedBox(height: 40),
//                           Text(
//                             'Ali Husni',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             'Part Time · UI/UX Designer · Joined 2021',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.grey,
//                             ),
//                           ),
//                           SizedBox(height: 10),

//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       top: -40,
//                       child: CircleAvatar(
//                         radius: 50,
//                         backgroundColor: Colors.blue,
//                         backgroundImage: NetworkImage(
//                           'https://via.placeholder.com/150',
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),

//             // Statistics Row
//             Container(
//               height: 120,
//               width: MediaQuery.of(context).size.width / 1.1,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: fifth,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.3),
//                     blurRadius: 8,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   _buildStatItem('02', 'Time Off', Colors.red),
//                   _buildStatItem('31', 'Attendance', Colors.blue),
//                   _buildStatItem('12', 'Overtime', Colors.green),
//                 ],
//               ),
//             ),
//             SizedBox(height: 15),

//             // Profile List Tiles
//             GestureDetector(
//               onTap: () {

//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
//               },
//               child: _buildListTile(
//                 context,
//                 icon: Icons.person_sharp,
//                 title: 'My Profile',
//               ),
//             ),
//             SizedBox(height: 15),

//             GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
//               },
//               child: _buildListTile(
//                 context,
//                 icon: Icons.restore,
//                 title: 'Reset Password',
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         shape: CircleBorder(),
//         onPressed: () {
//         },
//         backgroundColor: primary,
//         child: Icon(
//           Icons.description_outlined,
//           color: fifth,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         height: 90,
//         color: const Color.fromARGB(179, 242, 239, 239),
//         shape: CircularNotchedRectangle(),
//         notchMargin: 10.0,
//         child: Container(
//           height: 90.0,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20),
//               topRight: Radius.circular(20),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.white,
//                 blurRadius: 10,
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 icon: Icon(
//                   Icons.home,
//                   color: fouth,
//                   size: 27,
//                 ),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoardScreen()));
//                 },
//               ),
//               SizedBox(width: 10),
//               IconButton(
//                 icon: Icon(
//                   Icons.menu,
//                   color: fouth,
//                   size: 27,
//                 ),
//                 onPressed: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuScreen()));
//                 },
//               ),
//               SizedBox(width: 25), // Space for the FAB
//               IconButton(
//                 icon: Icon(
//                   Icons.notifications,
//                   color: fouth,
//                   size: 27,
//                 ),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
//                 },
//               ),
//               SizedBox(width: 10), // Space for the FAB
//               IconButton(
//                 icon: Icon(
//                   Icons.settings,
//                   color: fouth,
//                   size: 27,
//                 ),
//                 onPressed: () {
//         // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
//                       },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// Widget _buildStatItem(String value, String title, Color color) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text(
//         value,
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           color: color,
//         ),
//       ),
//       SizedBox(height: 5),
//       Text(
//         title,
//         style: TextStyle(fontSize: 12, color: Colors.grey),
//       ),
//     ],
//   );
// }

// Widget _buildListTile(BuildContext context,
//     {required IconData icon, required String title}) {
//   return Container(
//     height: 80,
//     width: MediaQuery.of(context).size.width / 1.1,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(15),
//       color: fifth,
//       boxShadow: [
//         BoxShadow(
//           color: Colors.grey.withOpacity(0.3),
//           blurRadius: 8,
//           offset: Offset(0, 3),
//         ),
//       ],
//     ),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Icon(icon, size: 28, color: Colors.grey),
//               SizedBox(width: 20),
//               Text(
//                 title,
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//           Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
//         ],
//       ),
//     ),
//   );
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/components/appbar.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/PersonaldetailsScreen.dart';
// import 'package:hrms/screens/Profile.dart';
// import 'package:hrms/screens/ResetPassword.dart';
// import 'package:hrms/screens/specifications.dart';
// import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: fifth,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       extendBodyBehindAppBar: true,
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   ShapeOfView(
//                     elevation: 5,
//                     height: 285,
//                     shape: ArcShape(
//                         direction: ArcDirection.Outside,
//                         height: 100,
//                         position: ArcPosition.Bottom),
//                     child: Container(
//                       height: MediaQuery.of(context).size.height * 0.28,
//                       color: const Color.fromARGB(255, 108, 105, 105),
//                     ),
//                   ),
//                   ShapeOfView(
//                     elevation: 5,
//                     height: 280,
//                     shape: ArcShape(
//                         direction: ArcDirection.Outside,
//                         height: 100,
//                         position: ArcPosition.Bottom),
//                     //  DiagonalShape(
//                     //     position: DiagonalPosition.Bottom,
//                     //     direction: DiagonalDirection.Left,
//                     //     angle: DiagonalAngle.deg(angle: 10)),
//                     child: Container(
//                       height: MediaQuery.of(context).size.height * 0.28,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             colors: [primary, fouth, seventh],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 50,
//                     top: 110,
//                     child: Row(
//                       children: [
//                         CircleAvatar(
//                           radius: 50,
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               'USERNAME',
//                               style: TextStyle(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w900,
//                                   color: fifth),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Text(
//                               'Profession',
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w900,
//                                   color: primary),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => ProfileScreen()));
//                 },
//                 child: _buildListTile(
//                   context,
//                   icon: Icons.person_sharp,
//                   title: 'MY PROFILE',
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => PersonaldetailScreen()));
//                 },
//                 child: _buildListTile(
//                   context,
//                   icon: Icons.info,
//                   title: 'Personal Info',
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => EmployeeIDScreen()));
//                 },
//                 child: _buildListTile(
//                   context,
//                   icon: Icons.person_pin_outlined,
//                   title: "Id/Specifications",
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => ResetPassword()));
//                 },
//                 child: _buildListTile(
//                   context,
//                   icon: Icons.password,
//                   title: 'Reset Password',
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildStatItem(String value, String title, Color color) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           value,
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: color,
//           ),
//         ),
//         SizedBox(height: 5),
//         Text(
//           title,
//           style: TextStyle(fontSize: 12, color: Colors.grey),
//         ),
//       ],
//     );
//   }

//   Widget _buildListTile(BuildContext context,
//       {required IconData icon, required String title}) {
//     return Container(
//       height: 60,
//       width: MediaQuery.of(context).size.width / 1.1,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: fifth,
//         boxShadow: [
//           // BoxShadow(
//           //   color: Colors.grey.withOpacity(0.3),
//           //   blurRadius: 8,
//           //   offset: Offset(0, 3),
//           // ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 70),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Icon(icon, size: 28, color: eight),
//                 SizedBox(width: 20),
//                 Text(
//                   title,
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: seventh),
//                 ),
//               ],
//             ),
//             // Icon(Icons.arrow_forward_ios, size: 18, color: seventh),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// // import 'package:lucide_icons/lucide_icons.dart';

// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//         ),
//         backgroundColor: Colors.black,
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage('assets/images/doctor.png'),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Username',
//                   style: TextStyle(
//                       color: fifth, fontWeight: FontWeight.w900, fontSize: 20),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Doc',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w900,
//                           fontSize: 13),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'ID:',
//                       style: TextStyle(
//                           color: fifth,
//                           fontWeight: FontWeight.w900,
//                           fontSize: 13),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 14,
//                 ),
//               ],
//             ),
//             Stack(
//               children: [
//                 Container(
//                   height: MediaQuery.sizeOf(context).height / 1.7,
//                   width: MediaQuery.sizeOf(context).width,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(170),
//                           topRight: Radius.circular(00))),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         // _buildListTile(context,
//                         //     // icon: LucideIcons.user, title: 'My profile'),
//                         // _buildListTile(context,
//                         //     icon: Icons.person, title: 'My profile')
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ));
//   }

//   Widget _buildStatItem(String value, String title, Color color) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           value,
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: color,
//           ),
//         ),
//         SizedBox(height: 5),
//         Text(
//           title,
//           style: TextStyle(fontSize: 12, color: Colors.grey),
//         ),
//       ],
//     );
//   }

//   Widget _buildListTile(BuildContext context,
//       {required IconData icon, required String title}) {
//     return Container(
//       height: 50,
//       width: MediaQuery.of(context).size.width / 1.45,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         // color: fifth,
//         boxShadow: [
//           // BoxShadow(
//           //   color: Colors.grey.withOpacity(0.3),
//           //   blurRadius: 8,
//           //   offset: Offset(0, 3),
//           // ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Icon(icon, size: 28, color: primary)),
//               SizedBox(width: 10),
//               Text(
//                 title,
//                 style: TextStyle(
//                     fontSize: 16, fontWeight: FontWeight.w500, color: fouth),
//               ),
//             ],
//           ),
//           Icon(Icons.arrow_forward_ios, size: 18, color: fouth),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/screens/PersonaldetailsScreen.dart';
// import 'package:hrms/screens/ResetPassword.dart';
// import 'package:hrms/screens/profiledetails.dart';
// import 'package:hrms/screens/specifications.dart';

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [fouth, Colors.black],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: fifth, width: 2)),
//                     child: CircleAvatar(
//                       radius: 40,
//                       backgroundImage: AssetImage("assets/images/deepak.png"),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     "Deepak Namarath",
//                     style: TextStyle(
//                         color: fifth,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "HR . ID:TT382",
//                     style: TextStyle(
//                         color: Colors.white70,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 200,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: fifth,
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 40, top: 50),
//                 child: Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Profiledetails()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.person,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "Profile",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/2.3,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => PersonaldetailScreen()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.book,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "Documents",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/3,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => EmployeeIDScreen()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.person_pin_circle,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "ID/Specifications",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/5,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPassword()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.password,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "Reset Password",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/4.5,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                       SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPassword()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.feedback,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "Grievance",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/4.5,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                        SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPassword()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.paid,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "Payslip",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/4.5,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                        SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPassword()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.lock,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "Competency and\n privilege",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/4.5,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                        SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPassword()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.assessment,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "Apprisals",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/4.5,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                        SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPassword()));
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.flight_takeoff,
//                             size: 20,
//                             color: primary,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             "Travel expense",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: fouth),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width/4.5,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios_outlined,
//                             size: 14,
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
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
// import 'package:hrms/screens/AppraisalScreen.dart';
// import 'package:hrms/screens/IncidentScreen.dart';
// import 'package:hrms/screens/Payslip.dart';
// import 'package:hrms/screens/PersonaldetailsScreen.dart';
// import 'package:hrms/screens/ResetPassword.dart';
// import 'package:hrms/screens/Travelexpense/frontpage/frontmain.dart';
// import 'package:hrms/screens/grievancescreen.dart';
// import 'package:hrms/screens/profiledetails.dart';
// import 'package:hrms/screens/specifications.dart';

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final settingsItems = [
//       _SettingsItem("Profile", Icons.person, () => Profiledetails()),
//       _SettingsItem("Documents", Icons.book, () => PersonaldetailScreen()),
//       _SettingsItem("ID/Specifications", Icons.person_pin_circle, () => EmployeeIDScreen()),
//       _SettingsItem("Grievance", Icons.feedback, () => GrievanceScreen()),
//       _SettingsItem("Payslip", Icons.paid, () => PaySlipScreen()),
//       _SettingsItem("Competency and\nPrivilege", Icons.lock, () => IncidentScreen()),
//       _SettingsItem("Appraisals", Icons.assessment, () => AppraisalScreen()),
//       _SettingsItem("Travel Expense", Icons.flight_takeoff, () => Frontmain()),
//       _SettingsItem("Reset Password", Icons.password, () => ResetPassword()),

//     ];

//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background with gradient + profile section
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [fouth, Colors.black],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: fifth, width: 2),
//                     ),
//                     child: const CircleAvatar(
//                       radius: 40,
//                       backgroundImage: AssetImage("assets/images/deepak.png"),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     "Deepak Namarath",
//                     style: TextStyle(
//                       color: fifth,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const Text(
//                     "HR . ID:TT382",
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Settings menu section
//           Positioned(
//             top: 200,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               padding: const EdgeInsets.only(left: 40, top: 50, right: 20),
//               decoration: BoxDecoration(
//                 color: fifth,
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                 ),
//               ),
//               child: ListView.separated(
//                 itemCount: settingsItems.length,
//                 separatorBuilder: (_, __) => const SizedBox(height: 25),
//                 itemBuilder: (context, index) {
//                   final item = settingsItems[index];
//                   return _SettingsTile(item: item);
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _SettingsItem {
//   final String title;
//   final IconData icon;
//   final Widget Function() screen;

//   _SettingsItem(this.title, this.icon, this.screen);
// }

// class _SettingsTile extends StatelessWidget {
//   final _SettingsItem item;
//   const _SettingsTile({required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(builder: (_) => item.screen()),
//       ),
//       child: Row(
//         children: [
//           Icon(item.icon, size: 22, color: primary),
//           const SizedBox(width: 20),
//           Expanded(
//             child: Text(
//               item.title,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//                 color: fouth,
//               ),
//             ),
//           ),
//           const Icon(Icons.arrow_forward_ios_outlined, size: 14),
//         ],
//       ),
//     );
//   }
// }
// // aa
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/consts/lists.dart';
// import 'package:hrms/screens/AppraisalScreen.dart';
// import 'package:hrms/screens/IncidentScreen.dart';
// import 'package:hrms/screens/Payslip.dart';
// import 'package:hrms/screens/PersonaldetailsScreen.dart';
// import 'package:hrms/screens/ResetPassword.dart';
// import 'package:hrms/screens/Travelexpense/frontpage/frontmain.dart';
// import 'package:hrms/screens/grievancescreen.dart';
// import 'package:hrms/screens/profiledetails.dart';
// import 'package:hrms/screens/specifications.dart';

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final settingsItems = [
//       _SettingsItem("Profile", Icons.person, () => Profiledetails()),
//       _SettingsItem("Documents", Icons.book, () => PersonaldetailScreen()),
//       _SettingsItem("ID/Specifications", Icons.person_pin_circle, () => EmployeeIDScreen()),
//       _SettingsItem("Grievance", Icons.feedback, () => GrievanceScreen()),
//       _SettingsItem("Payslip", Icons.paid, () => PaySlipScreen()),
//       _SettingsItem("Competency and\nPrivilege", Icons.lock, () => IncidentScreen()),
//       _SettingsItem("Appraisals", Icons.assessment, () => AppraisalScreen()),
//       _SettingsItem("Travel Expense", Icons.flight_takeoff, () => Frontmain()),
//       _SettingsItem("Reset Password", Icons.password, () => ResetPassword()),

//     ];

//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background with gradient + profile section
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [fouth, Colors.black],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: fifth, width: 2),
//                     ),
//                     child: const CircleAvatar(
//                       radius: 40,
//                       backgroundImage: AssetImage("assets/images/deepak.png"),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     "Deepak Namarath",
//                     style: TextStyle(
//                       color: fifth,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const Text(
//                     "HR . ID:TT382",
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Settings menu section
//           Positioned(
//             top: 200,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               padding: const EdgeInsets.only(left: 40, top: 50, right: 20),
//               decoration: BoxDecoration(
//                 color: fifth,
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                 ),
//               ),
//               child:  Padding(
//                   padding: const EdgeInsets.all(18.0),
//                   child: GridView.builder(
//                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       crossAxisSpacing: 15,
//                       mainAxisSpacing: 15,
//                       childAspectRatio: 1,
//                     ),
//                     itemCount:Settings.length,
//                     itemBuilder: (context, index) {
//                       final department = Settings[index];
//                       // String photoUrl = IconsPath + (department.icon ?? '');

//                       return GestureDetector(
//                         onTap: () {
//                           // departmentProvider.setDepartmentId(department.departmentId!);
//                           // Navigator.push(
//                           //   context,
//                           //   MaterialPageRoute(
//                           //     builder: (context) => DepartmentDoctors(
//                           //       departmentId: department.departmentId.toString(),
//                           //       name: department.name!,
//                           //     ),
//                           //   ),
//                           // );
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: secondary,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.3),
//                                 spreadRadius: 3,
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 3),
//                               ),
//                             ],
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                              CircleAvatar(
//                                       radius: 35,
//                                       backgroundColor: Colors.grey[200],
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           border: Border.all(
//                                             color: primary,
//                                             width: 3.0,
//                                           ),
//                                         ),
//                                         child: ClipOval(
//                                           child: Image.asset(
//                                             department['image'],
//                                             width: 90,
//                                             height: 90,
//                                             fit: BoxFit.cover,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                               const SizedBox(height: 10),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                     department['name'],
//                                       textAlign: TextAlign.center,
//                                       style:  TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,
//                                         color: primary
//                                       ),
//                                     ),

//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _SettingsItem {
//   final String title;
//   final IconData icon;
//   final Widget Function() screen;

//   _SettingsItem(this.title, this.icon, this.screen);
// }

// class _SettingsTile extends StatelessWidget {
//   final _SettingsItem item;
//   const _SettingsTile({required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(builder: (_) => item.screen()),
//       ),
//       child: Row(
//         children: [
//           Icon(item.icon, size: 22, color: primary),
//           const SizedBox(width: 20),
//           Expanded(
//             child: Text(
//               item.title,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//                 color: fouth,
//               ),
//             ),
//           ),
//           const Icon(Icons.arrow_forward_ios_outlined, size: 14),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/consts/lists.dart';
// import 'package:hrms/screens/AppraisalScreen.dart';
// import 'package:hrms/screens/IncidentScreen.dart';
// import 'package:hrms/screens/Payslip.dart';
// import 'package:hrms/screens/PersonaldetailsScreen.dart';
// import 'package:hrms/screens/ResetPassword.dart';
// import 'package:hrms/screens/Travelexpense/frontpage/frontmain.dart';
// import 'package:hrms/screens/grievancescreen.dart';
// import 'package:hrms/screens/profiledetails.dart';
// import 'package:hrms/screens/specifications.dart';

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   // 🔗 map settings name → screen
//   Widget _getScreen(String name) {
//     switch (name) {
//       case "Profile":
//         return Profiledetails();
//       case "Documents":
//         return PersonaldetailScreen();
//       case "ID/Specifications":
//         return EmployeeIDScreen();
//       case "Grievance":
//         return GrievanceScreen();
//       case "Payslip":
//         return PaySlipScreen();
//       case "Competency and Privilege":
//         return IncidentScreen();
//       case "Appraisals":
//         return AppraisalScreen();
//       case "Travel Expense":
//         return Frontmain();
//       case "Reset password":
//         return ResetPassword();
//       default:
//         return const Scaffold(
//           body: Center(child: Text("Screen not found")),
//         );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // ✅ Background with gradient + profile
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [fouth, Colors.black],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: fifth, width: 2),
//                     ),
//                     child: const CircleAvatar(
//                       radius: 40,
//                       backgroundImage: AssetImage("assets/images/deepak.png"),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     "Deepak Namarath",
//                     style: TextStyle(
//                       color: fifth,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const Text(
//                     "HR . ID:TT382",
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // ✅ Settings Grid
//           Positioned(
//             top: 200,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
//               decoration: BoxDecoration(
//                 color: fifth,
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                 ),
//               ),
//               child: GridView.builder(
//                 itemCount: Settings.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   crossAxisSpacing: 8,
//                   mainAxisSpacing: 15,
//                   childAspectRatio: 0.9,
//                 ),
//                 itemBuilder: (context, index) {
//                   final item = Settings[index];
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => _getScreen(item['name'])),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: const Color.fromARGB(63, 197, 195, 195),
//                         // boxShadow: [
//                         //   BoxShadow(
//                         //     color: Colors.grey.withOpacity(0.3),
//                         //     spreadRadius: 3,
//                         //     blurRadius: 6,
//                         //     offset: const Offset(0, 3),
//                         //   ),
//                         // ],
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                             radius: 30,
//                             backgroundColor: Colors.grey[200],
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 // border: Border.all(color: primary, width: 3.0),
//                               ),
//                               child: ClipOval(
//                                 child: Image.asset(
//                                   item['icon'],
//                                   width: 80,
//                                   height: 80,
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Text(
//                             item['name'],
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/consts/lists.dart';
import 'package:quasi_hrms/screens/AppraisalScreen.dart';
import 'package:quasi_hrms/screens/IncidentScreen.dart';
import 'package:quasi_hrms/screens/Payslip.dart';
import 'package:quasi_hrms/screens/PersonaldetailsScreen.dart';
import 'package:quasi_hrms/screens/ResetPassword.dart';
import 'package:quasi_hrms/screens/Travelexpense/frontpage/frontmain.dart';
import 'package:quasi_hrms/screens/grievancescreen.dart';
import 'package:quasi_hrms/screens/profiledetails.dart';
import 'package:quasi_hrms/screens/specifications.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  // map settings name → screen
  Widget _getScreen(String name) {
    switch (name) {
      case "Profile":
        return Profiledetails();
      case "Documents":
        return PersonaldetailScreen();
      case "ID/Specifications":
        return EmployeeIDScreen();
      case "Grievance":
        return GrievanceScreen();
      case "Payslip":
        return PaySlipScreen();
      case "Competency and Privilege":
        return IncidentScreen();
      case "Appraisals":
        return AppraisalScreen();
      case "Travel Expense":
        return Frontmain();
      case "Reset password":
        return ResetPassword();
      default:
        return const Scaffold(
          body: Center(child: Text("Screen not found")),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // ✅ Background with gradient + profile
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [fouth, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: fifth, width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/images/deepak.png"),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Deepak Namarath",
                    style: TextStyle(
                      color: fifth,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "HR • ID: TT382",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ✅ Settings Grid
          Positioned(
            top: 220,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: fifth,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: GridView.builder(
                itemCount: Settings.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth < 600 ? 3 : 4, 
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final item = Settings[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => _getScreen(item['name'])),
                      );
                    },
                    // child: Card(
                    //   elevation: 4,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(18),
                    //   ),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(18),
                    //       gradient: LinearGradient(
                    //         colors: [
                    //           Colors.white,
                    //           Colors.grey.shade200,
                    //         ],
                    //         begin: Alignment.topLeft,
                    //         end: Alignment.bottomRight,
                    //       ),
                    //     ),
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         CircleAvatar(
                    //           radius: 32,
                    //           backgroundColor: Colors.white,------------------------------
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(8.0),
                    //             child: Image.asset(
                    //               item['icon'],
                    //               fit: BoxFit.contain,
                    //               width: 40,
                    //               height: 40,aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaak3q
                    //             ),
                    //           ),
                    //         ),
                    //         const SizedBox(height: 10),
                    //         Text(
                    //           item['name'],
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //             fontSize: 13,
                    //             fontWeight: FontWeight.w600,
                    //             color: Colors.black87,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.grey.shade200,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image.asset(
                                    item['icon'],
                                    fit: BoxFit.contain,
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Flexible(
                                child: Text(
                                  item['name'],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
