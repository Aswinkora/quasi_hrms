// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class EmployeeIDScreen extends StatelessWidget {
//   const EmployeeIDScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "ID & Specifications",
//           style: TextStyle(
//             fontSize: 17,
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: fifth,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildProfileHeader(),
//               SizedBox(height: 20),
//               Text(
//                 "Specifications",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//               SizedBox(height: 10),
//               _buildSpecificationTile(
//                 "Work Shift",
//                 "Day Shift (8:00 AM - 4:00 PM)",
//               ),
//               _buildSpecificationTile("Role", "Surgical Technician"),
//               _buildSpecificationTile("Experience", "5 Years"),
//               _buildSpecificationTile(
//                 "Specializations",
//                 "Cardiac Surgery Assistance",
//               ),
//               _buildSpecificationTile(
//                 "Certifications",
//                 "BLS, ACLS, Infection Control",
//               ),
//               SizedBox(height: 30),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: Icon(Icons.edit),
//                     label: Text("Edit"),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: primary,
//                       foregroundColor: Colors.white,
//                     ),
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: Icon(Icons.download),
//                     label: Text("Download ID"),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: secondary,
//                       foregroundColor: Colors.white,
//                     ),
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: Icon(Icons.print),
//                     label: Text("Print"),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: third,
//                       foregroundColor: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildProfileHeader() {
//     return Card(
//       color: fifth,
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           children: [
//             CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage('assets/profile_pic.jpg'), // Replace with actual image path
//             ),
//             SizedBox(width: 20),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "John Doe",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   "Employee ID: 123456",
//                   style: TextStyle(
//                     color: Colors.black54,
//                     fontSize: 13,
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   "Department: Surgical Unit",
//                   style: TextStyle(
//                     color: Colors.black54,
//                     fontSize: 13,
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   "Designation: Surgical Technician",
//                   style: TextStyle(
//                     color: Colors.black54,
//                     fontSize: 12.5,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSpecificationTile(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         children: [
//           Icon(Icons.circle, size: 10, color: primary),
//           SizedBox(width: 10),
//           Expanded(
//             child: RichText(
//               text: TextSpan(
//                 text: "$title: ",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//                 children: [
//                   TextSpan(
//                     text: value,
//                     style: TextStyle(
//                       fontWeight: FontWeight.normal,
//                       color: Colors.black87,
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

import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class EmployeeIDScreen extends StatelessWidget {
  const EmployeeIDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [fouth, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'ID & Specifications',
                style: TextStyle(
                    color: fifth, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  color: fifth,
                ),
                height: MediaQuery.sizeOf(context).height / 1.2,
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildProfileHeader(),
                            SizedBox(height: 20),
                            Text(
                              "Specifications",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 10),
                            _buildSpecificationTile(
                              "Work Shift",
                              "Day Shift (8:00 AM - 4:00 PM)",
                            ),
                            _buildSpecificationTile(
                                "Role", "Surgical Technician"),
                            _buildSpecificationTile("Experience", "5 Years"),
                            _buildSpecificationTile(
                              "Specializations",
                              "Cardiac Surgery Assistance",
                            ),
                            _buildSpecificationTile(
                              "Certifications",
                              "BLS, ACLS, Infection Control",
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.edit),
                                  label: Text("Edit"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: primary,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.download),
                                  label: Text("Download ID"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: secondary,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.print),
                                  label: Text("Print"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: third,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  Widget _buildProfileHeader() {
    return Container(
      decoration: BoxDecoration(color: fifth, shape: BoxShape.rectangle),
      // elevation: 4,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(15),
      // ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                  'assets/profile_pic.jpg'), 
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John Doe",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Employee ID: 123456",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Department: Surgical Unit",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Designation: Surgical Technician",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecificationTile(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(Icons.circle, size: 10, color: primary),
          SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: "$title: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                children: [
                  TextSpan(
                    text: value,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
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
}
