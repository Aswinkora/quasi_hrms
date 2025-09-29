import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

// class DrillScreen extends StatelessWidget {
//   const DrillScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Drills and Mock Drills",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
//         backgroundColor: fifth,
//         elevation: 4.0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             _buildDrillTile(
//               context,
//               title: "Fire Drill",
//               description: "Simulated evacuation in case of fire.",
//               status: "Upcoming",
//               date: "Dec 15, 2024",
//               icon: Icons.local_fire_department,
//               color: Colors.orange,
//             ),
//             _buildDrillTile(
//               context,
//               title: "Code Blue Drill",
//               description: "Emergency response for cardiac arrest.",
//               status: "Completed",
//               date: "Nov 20, 2024",
//               icon: Icons.health_and_safety,
//               color: Colors.red,
//             ),
//             _buildDrillTile(
//               context,
//               title: "Emergency Evacuation Drill",
//               description: "Building-wide evacuation practice.",
//               status: "Upcoming",
//               date: "Jan 5, 2025",
//               icon: Icons.warning,
//               color: Colors.amber,
//             ),
//             _buildDrillTile(
//               context,
//               title: "Active Shooter Drill",
//               description: "Response to an active threat.",
//               status: "Completed",
//               date: "Oct 12, 2024",
//               icon: Icons.security,
//               color: Colors.blue,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDrillTile(BuildContext context,
//       {required String title,
//       required String description,
//       required String status,
//       required String date,
//       required IconData icon,
//       required Color color}) {
//     return Card(
//       color: fifth,
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       elevation: 4,
//       child: ListTile(
//         leading: CircleAvatar(
//           backgroundColor: color.withOpacity(0.2),
//           child: Icon(icon, color: color, size: 30),
//         ),
//         title: Text(
//           title,
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(description, style: TextStyle(color: fouth.withOpacity(0.7))),
//             SizedBox(height: 5),
//             Row(
//               children: [
//                 Icon(Icons.date_range, color: fouth.withOpacity(0.6), size: 18),
//                 SizedBox(width: 5),
//                 Text(date, style: TextStyle(color: fouth.withOpacity(0.7))),
//               ],
//             ),
//           ],
//         ),
//         trailing: Chip(
//           label: Text(
//             status,
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: status == "Upcoming" ? Colors.green : Colors.grey,
//         ),
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (_) => DrillDetailScreen(
//                 title: title,
//                 description: description,
//                 date: date,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class DrillDetailScreen extends StatelessWidget {
//   final String title;
//   final String description;
//   final String date;

//   const DrillDetailScreen({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.date,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
//         backgroundColor: fifth,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: fouth),
//             ),
//             SizedBox(height: 10),
//             Text(
//               description,
//               style: TextStyle(fontSize: 16, color: fouth.withOpacity(0.7)),
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//                 Icon(Icons.date_range, color: fouth.withOpacity(0.6)),
//                 SizedBox(width: 10),
//                 Text("Scheduled Date: $date",
//                     style: TextStyle(fontSize: 16, color: fouth.withOpacity(0.7))),
//               ],
//             ),
//             SizedBox(height: 30),
//             Text(
//               "Drill Objectives:",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: fouth),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "- Simulate realistic scenarios to test preparedness.\n"
//               "- Train staff on protocols and procedures.\n"
//               "- Identify gaps and areas of improvement.",
//               style: TextStyle(fontSize: 16, color: fouth.withOpacity(0.7)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DrillScreen extends StatelessWidget {
  const DrillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'Mock Drills',
                style: TextStyle(
                    color: fifth, fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50)),
                          color: fifth),
                      height: MediaQuery.sizeOf(context).height / 1.3,
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView(
                          children: [
                            _buildDrillTile(
                              context,
                              title: "Fire Drill",
                              description:
                                  "Simulated evacuation in case of fire.",
                              status: "Upcoming",
                              date: "Dec 15, 2024",
                              icon: Icons.local_fire_department,
                              color: Colors.orange,
                            ),
                            _buildDrillTile(
                              context,
                              title: "Code Blue Drill",
                              description:
                                  "Emergency response for cardiac arrest.",
                              status: "Completed",
                              date: "Nov 20, 2024",
                              icon: Icons.health_and_safety,
                              color: Colors.red,
                            ),
                            _buildDrillTile(
                              context,
                              title: "Emergency Evacuation Drill",
                              description: "Building-wide evacuation practice.",
                              status: "Upcoming",
                              date: "Jan 5, 2025",
                              icon: Icons.warning,
                              color: Colors.amber,
                            ),
                            _buildDrillTile(
                              context,
                              title: "Active Shooter Drill",
                              description: "Response to an active threat.",
                              status: "Completed",
                              date: "Oct 12, 2024",
                              icon: Icons.security,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ])));
  }

  Widget _buildDrillTile(BuildContext context,
      {required String title,
      required String description,
      required String status,
      required String date,
      required IconData icon,
      required Color color}) {
    return Card(
      // color: fifth,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color, size: 30),
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description,
                  style: TextStyle(color: fouth.withOpacity(0.7))),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.date_range,
                      color: primary.withOpacity(0.6), size: 18),
                  SizedBox(width: 5),
                  Text(date, style: TextStyle(color: fouth.withOpacity(0.7))),
                ],
              ),
            ],
          ),
          trailing: Chip(
            side: BorderSide(
              color: status == "Upcoming" ? Colors.green : Colors.grey,
            ),
            label: Text(
              status,
              style: TextStyle(
                color: status == "Upcoming" ? Colors.green : Colors.grey,
              ),
            ),
            backgroundColor: Colors.transparent,
            // backgroundColor: status == "Upcoming" ? Colors.green : Colors.grey,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DrillDetailScreen(
                  title: title,
                  description: description,
                  date: date,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DrillDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String date;

  const DrillDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                '${title}',
                style: TextStyle(
                    color: fifth, fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Stack(children: [
                Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50)),
                          color: fifth),
                      height: MediaQuery.sizeOf(context).height / 1.3,
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: fouth),
                            ),
                            SizedBox(height: 10),
                            Text(
                              description,
                              style: TextStyle(
                                  fontSize: 16, color: fouth.withOpacity(0.7)),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(Icons.date_range,
                                    color: fouth.withOpacity(0.6)),
                                SizedBox(width: 10),
                                Text("Scheduled Date: $date",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: fouth.withOpacity(0.7))),
                              ],
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Drill Objectives:",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: fouth),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "- Simulate realistic scenarios to test preparedness\n"
                              "- Train staff on protocols and procedures.\n"
                              "- Identify gaps and areas of improvement.",
                              style: TextStyle(
                                  fontSize: 16, color: fouth.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),
                    ))
              ])
            ])));
  }
}
