// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class Frontcontents extends StatefulWidget {
//   const Frontcontents({super.key});

//   @override
//   State<Frontcontents> createState() => _FrontcontentsState();
// }

// class _FrontcontentsState extends State<Frontcontents> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Container(
//             height: 200,
//             width: MediaQuery.sizeOf(context).width,
//             decoration: BoxDecoration(
//               border: Border.all(color: primary),
//               borderRadius: BorderRadius.circular(25),
//               gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: <Color>[primary, fouth],

//               ),
//             ),
//             child:Row(
//               children: [
//                 Column(
//                   children: [
//                     Text("05",style: TextStyle(color: fifth),),
//                     SizedBox(height: 5,),
//                     Text("upcoming trips",style: TextStyle(color: fifth),)
//                   ],
//                 ),
//                 SizedBox(width: 15,),
//                 Column(
//                   children: [
//                     Text("10",style: TextStyle(color: fifth),),
//                     SizedBox(height: 5,),
//                     Text("pending",style: TextStyle(color: fifth),)
//                   ],
//                 ),
//                   SizedBox(width: 15,),
//                 Column(
//                   children: [
//                     Text("15",style: TextStyle(color: fifth),),
//                     SizedBox(height: 5,),
//                     Text("approved",style: TextStyle(color: fifth),)
//                   ],
//                 ),
//               ],
//             ) ,
//           ),
//         ),
//         Expanded(
//           child: ListView(
//             children: const [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: ExpenseCard(
//                   title: 'Bangalore Trip',
//                   amount: '₹ 8,400',
//                   status: 'Approved',
//                   icon: Icons.directions_car,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: ExpenseCard(
//                   title: 'Delhi Meeting',
//                   amount: '₹ 12,200',
//                   status: 'Pending',
//                   icon: Icons.flight_outlined,
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class ExpenseCard extends StatelessWidget {
//   final String title;
//   final String amount;
//   final String status;
//   final IconData icon;

//   const ExpenseCard({
//     super.key,
//     required this.title,
//     required this.amount,
//     required this.status,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: fifth,
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 6.0,
//               offset: Offset(0, 4),
//             ),
//           ],
//           // border: Border.all(color: primary)
//           ),
//       child: ListTile(
//         leading: Icon(icon, size: 26),
//         title: Text(title, style: TextStyle(fontWeight: FontWeight.w600,color:fouth)),
//         subtitle: Text('Status: $status',style: TextStyle(),),
//         trailing: Text(amount, style: const TextStyle(fontSize: 16)),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class Frontcontents extends StatefulWidget {
//   const Frontcontents({super.key});

//   @override
//   State<Frontcontents> createState() => _FrontcontentsState();
// }

// class _FrontcontentsState extends State<Frontcontents> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Container(
//             height: 210, // Increase height to fit the circular graph
//             width: MediaQuery.sizeOf(context).width,
//             decoration: BoxDecoration(
//               border: Border.all(color: primary),
//               borderRadius: BorderRadius.circular(25),
//               gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: <Color>[primary, fouth],
//               ),
//             ),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal, // Make the content scroll horizontally
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   // Circular Progress for Upcoming Trips
//                   _buildCircularInfo("05", "Upcoming Trips", 0.25), // 25% progress

//                   // Circular Progress for Pending
//                   _buildCircularInfo("10", "Pending", 0.5), // 50% progress

//                   // Circular Progress for Approved
//                   _buildCircularInfo("15", "Approved", 0.75), // 75% progress
//                 ],
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: ListView(
//             children: const [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: ExpenseCard(
//                   title: 'Bangalore Trip',
//                   amount: '₹ 8,400',
//                   status: 'Approved',
//                   icon: Icons.directions_car,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: ExpenseCard(
//                   title: 'Delhi Meeting',
//                   amount: '₹ 12,200',
//                   status: 'Pending',
//                   icon: Icons.flight_outlined,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   // Helper method to build each circular progress indicator
//   Widget _buildCircularInfo(String number, String label, double progress) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Circular Progress Indicator
//           Stack(
//             alignment: Alignment.center,
//             children: [
//               // Background Circle (gray)
//               CircularProgressIndicator(
//                 value: 1.0,
//                 strokeWidth: 0,
//                 valueColor: AlwaysStoppedAnimation<Color>(fouth.withOpacity(0.2)),
//               ),
//               // Progress Circle (colored)
//               CircularProgressIndicator(
//                 value: progress,
//                 strokeWidth: 10,
//                 valueColor: AlwaysStoppedAnimation<Color>(fifth),
//               ),
//               // Number in the center of the circle
//               Text(
//                 number,
//                 style: TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.bold,
//                   color: fifth,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 16,
//               color: fifth,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ExpenseCard extends StatelessWidget {
//   final String title;
//   final String amount;
//   final String status;
//   final IconData icon;

//   const ExpenseCard({
//     super.key,
//     required this.title,
//     required this.amount,
//     required this.status,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: fifth,
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 6.0,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: ListTile(
//         leading: Icon(
//           icon,
//           size: 26,
//           color: primary, // Icon color matching theme
//         ),
//         title: Text(
//           title,
//           style: TextStyle(fontWeight: FontWeight.w600, color: fouth),
//         ),
//         subtitle: Text(
//           'Status: $status',
//           style: TextStyle(color: fouth.withOpacity(0.7)), // Light color for subtler text
//         ),
//         trailing: Text(
//           amount,
//           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/screens/Travelexpense/travelexpensemain.dart';

class Frontcontents extends StatefulWidget {
  const Frontcontents({super.key});

  @override
  State<Frontcontents> createState() => _FrontcontentsState();
}

class _FrontcontentsState extends State<Frontcontents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Container(
            height: 180, // Adjust height for clean layout
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[primary, fouth],
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Upcoming Trips Section
                  _buildInfoSection(
                      "05", "Upcoming ", Icons.calendar_today, 0.8),

                  // Pending Section (Bigger size)
                  _buildInfoSection("10", "Pending", Icons.pending,
                      1.2), // Larger size for emphasis

                  // Approved Section
                  _buildInfoSection("15", "Approved", Icons.check_circle, 0.8),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "My Claims",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: primary),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Travelexpensemain()));
                      },
                      child: Text(
                        "Expense Form +",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: primary),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ExpenseCard(
                  title: 'Bangalore Trip',
                  amount: '₹ 8,400',
                  status: 'Approved',
                  icon: Icons.directions_car,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ExpenseCard(
                  title: 'Delhi Meeting',
                  amount: '₹ 12,200',
                  status: 'Pending',
                  icon: Icons.flight_outlined,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Helper method to build each info section (like Upcoming Trips, Pending, Approved)
  Widget _buildInfoSection(
      String number, String label, IconData icon, double sizeFactor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon at the top
          Icon(
            icon,
            size: 30 * sizeFactor, // Scale the icon size based on sizeFactor
            color: fifth,
          ),
          SizedBox(height: 8),
          // Number display
          Text(
            number,
            style: TextStyle(
              fontSize: 32 * sizeFactor, // Scale the number size
              fontWeight: FontWeight.bold,
              color: fifth,
            ),
          ),
          SizedBox(height: 5),
          // Label text
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: fifth,
            ),
          ),
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String label;
  final String value;

  const StatCard({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
class ExpenseCard extends StatelessWidget {
  final String title;
  final String amount;
  final String status;
  final IconData icon;

  const ExpenseCard({
    super.key,
    required this.title,
    required this.amount,
    required this.status,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: fifth,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(
          icon,
          size: 26,
          color: primary, // Icon color matching theme
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, color: fouth),
        ),
        subtitle: Text(
          'Status: $status',
          style: TextStyle(
              color: fouth.withOpacity(0.7)), // Light color for subtler text
        ),
        trailing: Text(
          amount,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
