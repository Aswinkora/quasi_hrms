// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:hrms/components/appbar.dart';
// import 'package:hrms/consts/colors.dart';

// class PaySlipScreen extends StatelessWidget {
//   const PaySlipScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: fifth,
//         appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60.0),
//         child: customAppbar(),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 10,bottom: 10),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 height: 160,
//                 width: MediaQuery.of(context).size.width / 1.1,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: fouth,
//                     width: 2
//                   ),
//                   borderRadius: BorderRadius.circular(15),
//                   color: fifth
//                   ,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       blurRadius: 8,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//                   child: Row(
//                     children: [
//                       // Constrain PieChart to avoid infinite layout issues
//                       Container(
//                         height: 100,
//                         width: 100,
//                         child: PieChart(
//                           PieChartData(
//                             sections: [
//                               PieChartSectionData(
//                                 color: Colors.deepPurpleAccent,
//                                 value: 75,
//                                 radius: 30,
//                                 // title: 'E',
//                                 titleStyle: const TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                               PieChartSectionData(
//                                 color: Colors.deepOrangeAccent,
//                                 value: 25,
//                                 radius: 30,
//                                 // title: 'D',
//                                 titleStyle: const TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black),
//                               ),
//                             ],
//                             centerSpaceRadius:
//                                 25,
//                             sectionsSpace: 2,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 16),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text(
//                               "February 2022",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: const [
//                                 Text(
//                                   "₹67,500.00",
//                                   style: TextStyle(
//                                     color: Colors.deepPurpleAccent,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Text(
//                                   "₹5,500.00",
//                                   style: TextStyle(
//                                     color: Colors.deepOrangeAccent,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 8),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: const [
//                                 Text(
//                                   "Earnings",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                                 Text(
//                                   "Deductions",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   SizedBox(
//                       height: 50,
//                       width: 130,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(backgroundColor: seventh,
//                           ),
//                         child: Text("Download",style: TextStyle(color: fifth),),
//                       )),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: SizedBox(
//                         height: 50,
//                         width: 130,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: seventh,
//                              ),
//                           child: Text("Raise Issue",style: TextStyle(color: fifth),),
//                         )),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 height: 270,
//                 width: MediaQuery.sizeOf(context).width / 1.1,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: fouth),
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
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15,top: 10),
//                       child: Text("Earnings"),
//                     ),
//                     SizedBox(height: 15,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40,right: 40),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text("Basic"), Text("₹ 30,000.00")],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40,right: 40),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text("Leave Encashment"), Text("₹ 2,980.00")],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40,right: 40),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text("HRA"), Text("₹ 15,000.00")],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40,right: 40),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text("Other Allowance"), Text("₹ 10,000.00")],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40,right: 40),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text("Spl Allowance"), Text("₹ 15,000.00")],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 height: 200,
//                 width: MediaQuery.sizeOf(context).width / 1.1,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: fouth),
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
//                  child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15,top: 10),
//                       child: Text("Deductions"),
//                     ),
//                     SizedBox(height: 15,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40,right: 40),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text("Employee PF Contribution"), Text("₹ 3,000.00")],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40,right: 40),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text("Income Tax"), Text("₹ 1,000.00")],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40,right: 40),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text("Insurance"), Text("₹ 1,500.00")],
//                       ),
//                     ),

//                   ],
//                 ),
//               ),SizedBox(height: 4,),
//               Container(
//                 height: 50,
//                 width: MediaQuery.sizeOf(context).width/1.1,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: fouth),
//                   borderRadius: BorderRadius.circular(15),
//                   color: fifth,
//                   boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.3),
//                         blurRadius: 8,
//                         offset: Offset(0, 3),
//                       ),
//                     ],
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 40,right: 40),
//                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Gross Deductions"),
//                       Text("₹5,500.00")
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class PaySlipScreen extends StatefulWidget {
//   @override
//   State<PaySlipScreen> createState() => _PaySlipScreenState();
// }

// class _PaySlipScreenState extends State<PaySlipScreen> {
//   // final List<Map<String, String>> leaveHistory = [
//   //   {"type": "Sick Leave", "taken": "2", "available": "3"},
//   //   {"type": "Casual Leave", "taken": "4", "available": "2"},
//   //   {"type": "Vacation", "taken": "1", "available": "4"},
//   //   {"type": "pay leave", "taken": "1", "available": "4"},
//   // ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.transparent,
//       // ),
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
//                       "PaySlip",
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
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(50),
//                             topLeft: Radius.circular(50)),
//                         color: fifth,
//                       ),
//                       height: MediaQuery.sizeOf(context).height / 1.2,
//                       width: MediaQuery.sizeOf(context).width,
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.all(32),
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "You have earned gross pay of June month",
//                                   style: TextStyle(
//                                       color: Colors.grey,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15),
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       begin: Alignment.topLeft,
//                                       end: Alignment.bottomRight,
//                                       colors: <Color>[primary, secondary],
//                                     ),
//                                     borderRadius: BorderRadius.circular(25),
//                                     // border: Border.all(color: primary),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Colors.grey.withOpacity(0.3),
//                                         blurRadius: 8,
//                                         offset: Offset(0, 3),
//                                       ),
//                                     ],
//                                     // border: Border.all(color: primary)
//                                   ),
//                                   height: 270,
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(16.0),
//                                     child: Column(
//                                       children: [
//                                         SizedBox(
//                                           height: 160,
//                                           child: Stack(
//                                             alignment: Alignment.center,
//                                             children: [
//                                               Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 children: [
//                                                   Text(
//                                                     "₹82,500",
//                                                     style: TextStyle(
//                                                         color: fifth,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 18),
//                                                   ),
//                                                   Text(
//                                                     "Gross Pay",
//                                                     style: TextStyle(
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 16,
//                                                         color: Colors.grey),
//                                                   )
//                                                 ],
//                                               ),
//                                               PieChart(
//                                                 PieChartData(
//                                                   sections: [
//                                                     PieChartSectionData(
//                                                         color: secondary,
//                                                         value: 70000,
//                                                         radius: 10,
//                                                         showTitle: false),
//                                                     PieChartSectionData(
//                                                       color: third,
//                                                       value: 12500,
//                                                       radius: 10,
//                                                       showTitle: false,
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 30,
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 20),
//                                           child: Row(
//                                             children: [
//                                               Text(
//                                                 "₹ 70,000.00",
//                                                 style: TextStyle(
//                                                     color: fifth,
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 15),
//                                               ),
//                                               SizedBox(
//                                                 width: 80,
//                                               ),
//                                               Text(
//                                                 "₹ 12,500.00",
//                                                 style: TextStyle(
//                                                     color: fifth,
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 15),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 20),
//                                           child: Row(
//                                             children: [
//                                               Text(
//                                                 "Earnings",
//                                                 style: TextStyle(
//                                                     color: Colors.grey,
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 14),
//                                               ),
//                                               SizedBox(
//                                                 width: 102,
//                                               ),
//                                               Text(
//                                                 "Deductions",
//                                                 style: TextStyle(
//                                                     color: Colors.grey,
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 14),
//                                               ),
//                                             ],
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 180),
//                                   child: Text(
//                                     "Earning Details",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 16),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 Container(
//                                   height: 250,
//                                   width: MediaQuery.sizeOf(context).width,
//                                   decoration: BoxDecoration(
//                                     // border: Border.all(color: primary),
//                                     color: fifth,
//                                     borderRadius: BorderRadius.circular(20),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Colors.grey.withOpacity(0.3),
//                                         blurRadius: 8,
//                                         offset: Offset(0, 3),
//                                       ),
//                                     ],
//                                   ),
//                                   child: SingleChildScrollView(
//                                     scrollDirection: Axis.horizontal,
//                                     child: Row(
//                                       children: [
//                                         Container(
//                                           width:
//                                               MediaQuery.sizeOf(context).width /
//                                                   1.2,
//                                           padding: EdgeInsets.all(25),
//                                           decoration: BoxDecoration(
//                                             color: fifth,
//                                             borderRadius:
//                                                 BorderRadius.circular(15),
//                                           ),
//                                           child: Column(
//                                             children: [
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "Basic Pay",
//                                                     style: TextStyle(
//                                                       color: fouth,
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                     ),
//                                                   ),
//                                                   SizedBox(width: 60),
//                                                   Text(
//                                                     "₹ 30,000.00",
//                                                     style: TextStyle(
//                                                       color: Colors.black,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       fontSize: 16,
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               SizedBox(
//                                                 height: 15,
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "HRA",
//                                                     style: TextStyle(
//                                                         color: fouth,
//                                                         fontSize: 16,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   ),
//                                                   SizedBox(
//                                                     width: 60,
//                                                   ),
//                                                   Text(
//                                                     "₹ 15,000.00",
//                                                     style: TextStyle(
//                                                         color: Colors.black,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 16),
//                                                   )
//                                                 ],
//                                               ),
//                                               SizedBox(
//                                                 height: 15,
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "Other Allowance",
//                                                     style: TextStyle(
//                                                         color: fouth,
//                                                         fontSize: 16,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   ),
//                                                   SizedBox(
//                                                     width: 10,
//                                                   ),
//                                                   Text(
//                                                     "₹ 10,000.00",
//                                                     style: TextStyle(
//                                                         color: Colors.black,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 16),
//                                                   )
//                                                 ],
//                                               ),
//                                               SizedBox(
//                                                 height: 15,
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "SPL Allowance",
//                                                     style: TextStyle(
//                                                         color: fouth,
//                                                         fontSize: 16,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   ),
//                                                   SizedBox(
//                                                     width: 20,
//                                                   ),
//                                                   Text(
//                                                     "₹ 15,000.00",
//                                                     style: TextStyle(
//                                                         color: Colors.black,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 16),
//                                                   )
//                                                 ],
//                                               ),
//                                               SizedBox(
//                                                 height: 20,
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "Total Earning",
//                                                     style: TextStyle(
//                                                         color: secondary,
//                                                         fontSize: 16,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   ),
//                                                   SizedBox(
//                                                     width: 60,
//                                                   ),
//                                                   Text(
//                                                     "₹ 70,000.00",
//                                                     style: TextStyle(
//                                                         color: secondary,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 16),
//                                                   )
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         SizedBox(width: 16),
//                                         // Add another container to slide into view
//                                         Container(
//                                           width:
//                                               MediaQuery.sizeOf(context).width /
//                                                   1.2,
//                                           padding: EdgeInsets.all(25),
//                                           decoration: BoxDecoration(
//                                             color: fifth,
//                                             borderRadius:
//                                                 BorderRadius.circular(15),
//                                           ),
//                                           child: Column(
//                                             children: [
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "EPF",
//                                                     style: TextStyle(
//                                                       color: fouth,
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                     ),
//                                                   ),
//                                                   SizedBox(width: 60),
//                                                   Text(
//                                                     "₹ 06,000.00",
//                                                     style: TextStyle(
//                                                       color: Colors.black,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       fontSize: 16,
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               SizedBox(
//                                                 height: 15,
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "Income Tax",
//                                                     style: TextStyle(
//                                                         color: fouth,
//                                                         fontSize: 16,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   ),
//                                                   SizedBox(
//                                                     width: 60,
//                                                   ),
//                                                   Text(
//                                                     "₹ 05,000.00",
//                                                     style: TextStyle(
//                                                         color: Colors.black,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 16),
//                                                   )
//                                                 ],
//                                               ),
//                                               SizedBox(
//                                                 height: 15,
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "Insurance",
//                                                     style: TextStyle(
//                                                         color: fouth,
//                                                         fontSize: 16,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   ),
//                                                   SizedBox(
//                                                     width: 60,
//                                                   ),
//                                                   Text(
//                                                     "₹ 01,500.00",
//                                                     style: TextStyle(
//                                                         color: Colors.black,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 16),
//                                                   )
//                                                 ],
//                                               ),
//                                               SizedBox(
//                                                 height: 55,
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     "Total Deductions",
//                                                     style: TextStyle(
//                                                         color: third,
//                                                         fontSize: 16,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   ),
//                                                   SizedBox(
//                                                     width: 20,
//                                                   ),
//                                                   Text(
//                                                     "₹ 12,500.00",
//                                                     style: TextStyle(
//                                                         color: third,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 16),
//                                                   )
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
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
// }





// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class PaySlipScreen extends StatelessWidget {
//   const PaySlipScreen({Key? key}) : super(key: key);

//   Widget _buildDetail(String label, String amount, Color color) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(label, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
//         Text(amount, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
//       ],
//     );
//   }

//   Widget _buildContainer(List<Map<String, String>> items, Color headerColor) {
//     return Container(
//       padding: const EdgeInsets.all(25),
//       decoration: BoxDecoration(
//         color: fifth,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           for (var item in items)
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: _buildDetail(item['label']!, item['amount']!, headerColor),
//             ),
//           const SizedBox(height: 20),
//           _buildDetail("Total ${headerColor == secondary ? 'Earnings' : 'Deductions'}",
//               headerColor == secondary ? "₹70,000.00" : "₹12,500.00", headerColor),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [fouth, Colors.black],
//               ),
//             ),
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 60),
//                 child: Column(
//                   children: [
//                     Text("PaySlip", style: TextStyle(color: fifth, fontSize: 25, fontWeight: FontWeight.bold)),
//                     const SizedBox(height: 20),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: _buildContainer([
//                             {"label": "Basic Pay", "amount": "₹30,000.00"},
//                             {"label": "HRA", "amount": "₹15,000.00"},
//                             {"label": "Other Allowance", "amount": "₹10,000.00"},
//                             {"label": "SPL Allowance", "amount": "₹15,000.00"},
//                           ], secondary),
//                         ),
//                         const SizedBox(width: 16),
//                         Expanded(
//                           child: _buildContainer([
//                             {"label": "EPF", "amount": "₹6,000.00"},
//                             {"label": "Income Tax", "amount": "₹5,000.00"},
//                             {"label": "Insurance", "amount": "₹1,500.00"},
//                           ], third),
//                         ),
//                       ],
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




// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class PaySlipScreen extends StatelessWidget {
//   const PaySlipScreen({Key? key}) : super(key: key);

//   Widget _buildHeader() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 60),
//       child: Text(
//         "PaySlip",
//         style: TextStyle(
//           color: fifth,
//           fontWeight: FontWeight.bold,
//           fontSize: 25,
//         ),
//       ),
//     );
//   }

//   Widget _buildPaySummary() {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(50),
//           topRight: Radius.circular(50),
//         ),
//         color: fifth,
//       ),
//       padding: const EdgeInsets.all(32),
//       child: Column(
//         children: [
//           Text(
//             "You have earned gross pay of June month",
//             style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 15),
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [primary, secondary]),
//               borderRadius: BorderRadius.circular(25),
//               boxShadow: [
//                 BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 8),
//               ],
//             ),
//             height: 270,
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("₹82,500", style: TextStyle(color: fifth, fontSize: 18)),
//                   Text("Gross Pay", style: TextStyle(color: Colors.grey, fontSize: 16)),
//                   const SizedBox(height: 10),
//                   PieChart(
//                     PieChartData(
//                       sections: [
//                         PieChartSectionData(color: secondary, value: 70000, radius: 10),
//                         PieChartSectionData(color: third, value: 12500, radius: 10),
//                       ],
//                       centerSpaceRadius: 0,
//                       sectionsSpace: 0,
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       _buildDetail("₹70,000.00", "Earnings"),
//                       _buildDetail("₹12,500.00", "Deductions"),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDetail(String amount, String label) {
//     return Column(
//       children: [
//         Text(amount, style: TextStyle(color: fifth, fontWeight: FontWeight.bold)),
//         Text(label, style: TextStyle(color: Colors.grey, fontSize: 14)),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [fouth, Colors.black],
//               ),
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   _buildHeader(),
//                   const SizedBox(height: 40),
//                   _buildPaySummary(),
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

// class PaySlipScreen extends StatefulWidget {
//   @override
//   _EarningDeductionDetailsState createState() => _EarningDeductionDetailsState();
// }

// class _EarningDeductionDetailsState extends State<PaySlipScreen> {
//   final PageController _pageController = PageController();
//   String _heading = "Earning Details";

//   void _onPageChanged(int index) {
//     setState(() {
//       _heading = index == 0 ? "Earning Details" : "Deduction Details";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Salary Details"),
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 15),
//           Padding(
//             padding: const EdgeInsets.only(right: 180),
//             child: Text(
//               _heading,
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//           SizedBox(height: 15),
//           Container(
//             height: 250,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               color: Colors.grey[200], // Use your 'fifth' color here
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.3),
//                   blurRadius: 8,
//                   offset: Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: PageView(
//               controller: _pageController,
//               onPageChanged: _onPageChanged,
//               children: [
//                 // Earning Details
//                 Padding(
//                   padding: const EdgeInsets.all(25),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildRow("Basic Pay", "₹ 30,000.00"),
//                       SizedBox(height: 15),
//                       _buildRow("HRA", "₹ 15,000.00"),
//                       SizedBox(height: 15),
//                       _buildRow("Other Allowance", "₹ 10,000.00"),
//                       SizedBox(height: 15),
//                       _buildRow("SPL Allowance", "₹ 15,000.00"),
//                       SizedBox(height: 20),
//                       _buildRow("Total Earning", "₹ 70,000.00", isBold: true),
//                     ],
//                   ),
//                 ),

//                 // Deduction Details
//                 Padding(
//                   padding: const EdgeInsets.all(25),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildRow("EPF", "₹ 6,000.00"),
//                       SizedBox(height: 15),
//                       _buildRow("Income Tax", "₹ 5,000.00"),
//                       SizedBox(height: 15),
//                       _buildRow("Insurance", "₹ 1,500.00"),
//                       SizedBox(height: 55),
//                       _buildRow("Total Deductions", "₹ 12,500.00", isBold: true),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildRow(String title, String value, {bool isBold = false}) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             color: isBold ? Colors.blue : Colors.black, // Adjust colors as needed
//             fontSize: 16,
//             fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//         Text(
//           value,
//           style: TextStyle(
//             color: isBold ? Colors.blue : Colors.black,
//             fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//             fontSize: 16,
//           ),
//         ),
//       ],
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:quasi_hrms/consts/colors.dart';

class PaySlipScreen extends StatefulWidget {
  @override
  State<PaySlipScreen> createState() => _PaySlipScreenState();
}

class _PaySlipScreenState extends State<PaySlipScreen> {
  final PageController _pageController = PageController();
  String _heading = "Earning Details";

  void _onPageChanged(int index) {
    setState(() {
      _heading = index == 0 ? "Earning Details" : "Deduction Details";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text(
                      "PaySlip",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height / 1.2,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(32),
                            child: Column(
                              children: [
                                Text(
                                  "You have earned gross pay of June month",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: <Color>[
                                        primary,
                                        secondary
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  height: 270,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 160,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "₹82,500",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  ),
                                                  Text(
                                                    "Gross Pay",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  )
                                                ],
                                              ),
                                              PieChart(
                                                PieChartData(
                                                  sections: [
                                                    PieChartSectionData(
                                                        color: secondary,
                                                        value: 70000,
                                                        radius: 10,
                                                        showTitle: false),
                                                    PieChartSectionData(
                                                      color: third,
                                                      value: 12500,
                                                      radius: 10,
                                                      showTitle: false,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                "₹ 70,000.00",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(width: MediaQuery.sizeOf(context).width/5.5),
                                              Text(
                                                "₹ 12,500.00",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Earnings",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              SizedBox(width: MediaQuery.sizeOf(context).width/3.9),
                                              Text(
                                                "Deductions",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  _heading,
                                  style: TextStyle(
                                    color: fouth,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    // border: Border.all(color: primary),
                                    borderRadius: BorderRadius.circular(20),
                                    color: fifth
                                  ),
                                  height: MediaQuery.sizeOf(context).height/3.6,
                                  child: PageView(
                                    controller: _pageController,
                                    onPageChanged: _onPageChanged,
                                    children: [
                                      _buildEarningDetails(),
                                      _buildDeductionDetails(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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

  Widget _buildEarningDetails() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRow("Basic Pay", "₹ 30,000.00"),
          SizedBox(height: 15),
          _buildRow("HRA", "₹ 15,000.00"),
          SizedBox(height: 15),
          _buildRow("Other Allowance", "₹ 10,000.00"),
          SizedBox(height: 15),
          _buildRow("SPL Allowance", "₹ 15,000.00"),
          SizedBox(height: 20),
          _buildRow("Total Earning", "₹ 70,000.00", isBold: true,),
        ],
      ),
    );
  }

  Widget _buildDeductionDetails() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRow("EPF", "₹ 6,000.00",),
          SizedBox(height: 15),
          _buildRow("Income Tax", "₹ 5,000.00"),
          SizedBox(height: 15),
          _buildRow("Insurance", "₹ 1,500.00"),
          SizedBox(height: 55),
          _buildRow("Total Deductions", "₹ 12,500.00", isBold: true),
        ],
      ),
    );
  }

  Widget _buildRow(String title, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: isBold ? secondary : Colors.black,
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: isBold ? third : Colors.black,
            fontWeight: isBold ? FontWeight.bold : FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
