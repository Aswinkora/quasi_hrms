// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:hrms/consts/colors.dart';

// class DutyRosterScreen extends StatefulWidget {
//   const DutyRosterScreen({Key? key}) : super(key: key);

//   @override
//   State<DutyRosterScreen> createState() => _DutyRosterScreenState();
// }

// class _DutyRosterScreenState extends State<DutyRosterScreen> {
//   late CalendarFormat _calendarFormat;
//   late DateTime _selectedDay;
//   late DateTime _focusedDay;

//   @override
//   void initState() {
//     super.initState();
//     _calendarFormat = CalendarFormat.month;
//     _selectedDay = DateTime.now();
//     _focusedDay = DateTime.now();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background gradient
//           SingleChildScrollView(
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [fouth, Colors.black],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 120, top: 70),
//                 child: Text(
//                   "Duty Roster",
//                   style: TextStyle(
//                       color: fifth, fontWeight: FontWeight.bold, fontSize: 25),
//                 ),
//               ),
//             ),
//           ),

//           // White screen from bottom
//           Positioned(
//             top: 130,
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
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.all(10),
//                 child: Column(
//                   children: [
//                     // Calendar widget inside a fixed container
//                    Container(
//                         height: 430,
//                         width: MediaQuery.of(context).size.width,
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: primary),
//                           borderRadius: BorderRadius.circular(30),
//                           color: fifth,
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Colors.black12,
//                               blurRadius: 6.0,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child:
                          
//                             TableCalendar(
//                           firstDay: DateTime.utc(2020, 1, 1),
//                           lastDay: DateTime.utc(2030, 12, 31),
//                           focusedDay: _focusedDay,
//                           calendarFormat: CalendarFormat.month,
//                           selectedDayPredicate: (day) =>
//                               isSameDay(_selectedDay, day),
//                           onDaySelected: (selectedDay, focusedDay) {
//                             setState(() {
//                               _selectedDay = selectedDay;
//                               _focusedDay = focusedDay;
//                             });
//                           },
//                           headerStyle: HeaderStyle(
//                             leftChevronPadding: EdgeInsets.only(left: 30),
//                             titleCentered: true,
//                             formatButtonVisible: false,
//                             titleTextStyle: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             leftChevronIcon: const Icon(Icons.chevron_left,
//                                 color: Colors.black),
//                             rightChevronIcon: const Icon(Icons.chevron_right,
//                                 color: Colors.black),
//                           ),
//                           calendarStyle: CalendarStyle(
//                             todayDecoration: BoxDecoration(
//                               color: Colors.blue,
//                               shape: BoxShape
//                                   .circle, // Circular shape doesn't use borderRadius
//                             ),
//                             selectedDecoration: BoxDecoration(
//                               color: Colors.black,
//                               shape: BoxShape
//                                   .circle, // Circular shape doesn't use borderRadius
//                             ),
//                             markerDecoration: BoxDecoration(
//                               color: Colors.orange,
//                               shape: BoxShape
//                                   .circle, // Circular shape doesn't use borderRadius
//                             ),
//                             defaultDecoration: BoxDecoration(
//                               border: Border.all(color: primary ),
//                               borderRadius: BorderRadius.circular(
//                                   5), // Keep borderRadius only for rectangles
//                               shape: BoxShape
//                                   .rectangle, // Use rectangle shape when using borderRadius
//                             ),
//                             outsideDecoration:
//                                 const BoxDecoration(), // No decoration for outside dates
//                           ),
//                           eventLoader: (day) {
//                             // Example dates with events
//                             if (day.day % 3 == 0) return [1];
//                             return [];
//                           },
//                         ),
//                       ),

//                     const SizedBox(height: 15),

//                     // Time slots and hour boxes
//                     buildTimeSlot(
//                       "12:00 pm - 11:00 am",
//                       "AVAILABLE",
//                       const Color(0xFFE87726),
//                       "Sat, 28th Dec 2020",
//                       "FY2 Doctor",
//                       "Emergency Department",
//                       "Imperial College",
//                     ),
//                     const SizedBox(height: 1),
//                     Row(
//                       children: [
//                         Expanded(
//                             child: buildHourBox("CORE HOURS", "60.00", fifth,
//                                 isLeft: true)),
//                         const SizedBox(width: 1),
//                         Expanded(
//                             child: buildHourBox("UNSOCIAL HOURS", "85.00",
//                                 const Color(0xFFEFEFEE),
//                                 isLeft: false)),
//                       ],
//                     ),
//                     const SizedBox(height: 15),

//                     buildTimeSlot(
//                       "12:00 pm - 11:00 am",
//                       "URGENT",
//                       Colors.red,
//                       "Sat, 28th Dec 2020",
//                       "FY2 Doctor",
//                       "Emergency Department",
//                       "Imperial College",
//                     ),
//                     const SizedBox(height: 1),
//                     Row(
//                       children: [
//                         Expanded(
//                             child: buildHourBox("CORE HOURS", "60.00", fifth,
//                                 isLeft: true)),
//                         const SizedBox(width: 1),
//                         Expanded(
//                             child: buildHourBox("UNSOCIAL HOURS", "85.00",
//                                 const Color(0xFFEFEFEE),
//                                 isLeft: false)),
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

// Widget buildTimeSlot(String time, String status, Color statusColor,
//       String date, String title, String department, String location) {
//     return Container(
//       height: 200,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//         color: fifth,
//         boxShadow: const [
//           BoxShadow(
//               color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 4)),
//         ],
//         border: Border.all(color: primary),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   time,
//                   style: const TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//                 Container(
//                   height: 50,
//                   width: 130,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: statusColor.withOpacity(0.2),
//                   ),
//                   child: Center(
//                     child: Text(
//                       status,
//                       style: TextStyle(
//                           color: statusColor, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 5),
//             Text(date,
//                 style:
//                     const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 10),
//             _buildInfoRow(Icons.medical_services_sharp, title),
//             _buildInfoRow(Icons.emergency, department),
//             _buildInfoRow(Icons.location_on_outlined, location),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget buildHourBox(String title, String hours, Color color,
//       {bool isLeft = true}) {
//     return Container(
//       height: 70,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//           bottomLeft: isLeft ? const Radius.circular(15) : Radius.zero,
//           bottomRight: isLeft ? Radius.zero : const Radius.circular(15),
//         ),
//         color: color,
//         boxShadow: const [
//           BoxShadow(
//               color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 4)),
//         ],
//         border: Border.all(color: primary),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
//           ),
//           Text(
//             hours,
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
//           ),
//         ],
//       ),
//     );
//   }
//    Widget _buildInfoRow(IconData icon, String text) {
//     return Row(
//       children: [
//         Icon(icon),
//         const SizedBox(width: 5),
//         Text(
//           text,
//           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }



import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:quasi_hrms/consts/colors.dart';

class DutyRosterScreen extends StatefulWidget {
  const DutyRosterScreen({Key? key}) : super(key: key);

  @override
  State<DutyRosterScreen> createState() => _DutyRosterScreenState();
}

class _DutyRosterScreenState extends State<DutyRosterScreen> {
  late CalendarFormat _calendarFormat;
  late DateTime _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _calendarFormat = CalendarFormat.month;
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [fouth, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 120, top: 70),
                child: Text(
                  "Duty Roster",
                  style: TextStyle(
                      color: fifth, fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
          ),

          // White screen from bottom
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: fifth,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  // Calendar widget inside a fixed container
                  Container(
                    height: 430,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: primary),
                      borderRadius: BorderRadius.circular(30),
                      color: fifth,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6.0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TableCalendar(
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: _focusedDay,
                      calendarFormat: CalendarFormat.month,
                      selectedDayPredicate: (day) =>
                          isSameDay(_selectedDay, day),
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      },
                      headerStyle: HeaderStyle(
                        leftChevronPadding: EdgeInsets.only(left: 30),
                        titleCentered: true,
                        formatButtonVisible: false,
                        titleTextStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        leftChevronIcon: const Icon(Icons.chevron_left,
                            color: Colors.black),
                        rightChevronIcon: const Icon(Icons.chevron_right,
                            color: Colors.black),
                      ),
                      calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle, // No borderRadius needed for circle shapes
                        ),
                        selectedDecoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle, // No borderRadius needed for circle shapes
                        ),
                        markerDecoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle, // No borderRadius needed for circle shapes
                        ),
                        defaultDecoration: BoxDecoration(
                          border: Border.all(color: primary),
                          borderRadius: BorderRadius.circular(5), // BorderRadius is fine for rectangles
                          shape: BoxShape.rectangle, // Use rectangle shape with borderRadius
                        ),
                        outsideDecoration: const BoxDecoration(), // No decoration for outside dates
                      ),
                      eventLoader: (day) {
                        // Example dates with events
                        if (day.day % 3 == 0) return [1];
                        return [];
                      },
                    ),
                  ),

                  // Scrollable content below the calendar
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          // Time slots and hour boxes
                          buildTimeSlot(
                            "12:00 pm - 11:00 am",
                            "AVAILABLE",
                            const Color(0xFFE87726),
                            "Sat, 28th Dec 2020",
                            "FY2 Doctor",
                            "Emergency Department",
                            "Imperial College",
                          ),
                          const SizedBox(height: 1),
                          Row(
                            children: [
                              Expanded(
                                  child: buildHourBox("CORE HOURS", "60.00", fifth,
                                      isLeft: true)),
                              const SizedBox(width: 1),
                              Expanded(
                                  child: buildHourBox("UNSOCIAL HOURS", "85.00",
                                      const Color(0xFFEFEFEE),
                                      isLeft: false)),
                            ],
                          ),
                          const SizedBox(height: 15),

                          buildTimeSlot(
                            "12:00 pm - 11:00 am",
                            "URGENT",
                            Colors.red,
                            "Sat, 28th Dec 2020",
                            "FY2 Doctor",
                            "Emergency Department",
                            "Imperial College",
                          ),
                          const SizedBox(height: 1),
                          Row(
                            children: [
                              Expanded(
                                  child: buildHourBox("CORE HOURS", "60.00", fifth,
                                      isLeft: true)),
                              const SizedBox(width: 1),
                              Expanded(
                                  child: buildHourBox("UNSOCIAL HOURS", "85.00",
                                      const Color(0xFFEFEFEE),
                                      isLeft: false)),
                            ],
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

  // Widget buildTimeSlot(String time, String status, Color statusColor,
  //     String date, String title, String department, String location) {
  //   return Container(
  //     height: 200,
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(15), topRight: Radius.circular(15)),
  //       color: fifth,
  //       boxShadow: const [
  //         BoxShadow(
  //             color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 4)),
  //       ],
  //       border: Border.all(color: primary),
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.all(10),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text(
  //                 time,
  //                 style: const TextStyle(
  //                     fontSize: 15, fontWeight: FontWeight.bold),
  //               ),
  //               Container(
  //                 height: 50,
  //                 width: 130,
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(10),
  //                   color: statusColor.withOpacity(0.2),
  //                 ),
  //                 child: Center(
  //                   child: Text(
  //                     status,
  //                     style: TextStyle(
  //                         color: statusColor, fontWeight: FontWeight.bold),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //           const SizedBox(height: 5),
  //           Text(date,
  //               style:
  //                   const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
  //           const SizedBox(height: 10),
  //           _buildInfoRow(Icons.medical_services_sharp, title),
  //           _buildInfoRow(Icons.emergency, department),
  //           _buildInfoRow(Icons.location_on_outlined, location),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget buildTimeSlot(String time, String status, Color statusColor,
    String date, String title, String department, String location) {
  return Container(
    height: 300, // Increased height for better spacing
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)), // More rounded corners
      color: fifth,
      boxShadow: const [
        BoxShadow(
            color: Colors.black12, blurRadius: 8.0, offset: Offset(0, 6)),
      ],
      border: Border.all(color: primary),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15), // Increased padding for better spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: statusColor.withOpacity(0.2),
                    ),
                    child: Center(
                      child: Text(
                        status,
                        style: TextStyle(
                            color: statusColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Space between status and button
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Request"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Button color
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10), // Space between time/status and date
          Text(
            date,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          const SizedBox(height: 10), // Space between date and info
          _buildInfoRow(Icons.medical_services_sharp, title),
          const SizedBox(height: 5),
          _buildInfoRow(Icons.emergency, department),
          const SizedBox(height: 5),
          _buildInfoRow(Icons.location_on_outlined, location),
        ],
      ),
    ),
  );
}



  Widget buildHourBox(String title, String hours, Color color,
      {bool isLeft = true}) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: isLeft ? const Radius.circular(15) : Radius.zero,
          bottomRight: isLeft ? Radius.zero : const Radius.circular(15),
        ),
        color: color,
        boxShadow: const [
          BoxShadow(
              color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 4)),
        ],
        border: Border.all(color: primary),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
          ),
          Text(
            hours,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
