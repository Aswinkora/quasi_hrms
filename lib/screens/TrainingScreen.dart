// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class TrainingScreen extends StatelessWidget {
//   const TrainingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: fifth,
//         title: Text(
//           "Hospital Training Modules",
//        style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         elevation: 4.0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: ListView(
//           children: [
//             _buildTrainingTile(
//               context,
//               title: "Infection Control Training",
//               description: "Learn best practices for infection prevention.",
//               progress: 0.7,
//               icon: Icons.health_and_safety,
//             ),
//             _buildTrainingTile(
//               context,
//               title: "Medical Equipment Usage",
//               description: "Understand hospital equipment handling.",
//               progress: 0.4,
//               icon: Icons.biotech,
//             ),
//             _buildTrainingTile(
//               context,
//               title: "Patient Care Guidelines",
//               description: "Improve patient interactions and care standards.",
//               progress: 0.9,
//               icon: Icons.people,
//             ),
//             _buildTrainingTile(
//               context,
//               title: "Emergency Response Training",
//               description: "Prepare for handling emergencies effectively.",
//               progress: 0.2,
//               icon: Icons.warning,
//             ),
//             _buildTrainingTile(
//               context,
//               title: "Ethics and Compliance",
//               description: "Adhere to ethical practices and hospital policies.",
//               progress: 0.6,
//               icon: Icons.gavel,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTrainingTile(BuildContext context,
//       {required String title,
//       required String description,
//       required double progress,
//       required IconData icon}) {
//     return Card(
//       color: fifth,
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       elevation: 4,
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (_) => TrainingDetailScreen(title: title)),
//           );
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Row(
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 backgroundColor: secondary.withOpacity(0.2),
//                 child: Icon(icon, color: third, size: 30),
//               ),
//               SizedBox(width: 20),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: TextStyle(
//                         color: fouth,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       description,
//                       style: TextStyle(color: fouth.withOpacity(0.7)),
//                     ),
//                     SizedBox(height: 10),
//                     LinearProgressIndicator(
//                       value: progress,
//                       backgroundColor: fifth,
//                       color: primary,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TrainingDetailScreen extends StatelessWidget {
//   final String title;

//   const TrainingDetailScreen({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: fifth,
//         title: Text(title,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 color: fouth,
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               "This is where you can add detailed training content, such as text instructions, embedded videos, and quizzes to assess knowledge.",
//               style: TextStyle(color: fouth.withOpacity(0.7), fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';

// class TrainingScreen extends StatefulWidget {
//   const TrainingScreen({super.key});

//   @override
//   State<TrainingScreen> createState() => _TrainingScreenState();
// }

// class _TrainingScreenState extends State<TrainingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           // Static gradient container
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
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 50),
//                 child: Text(
//                   "Training",
//                   style: TextStyle(
//                     color: fifth,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(50),
//                       topLeft: Radius.circular(50),
//                     ),
//                     color: fifth,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20),
//                     child: Column(
//                       children: [
//                         Expanded(
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.vertical,
//                             child: Column(
//                               children: [
//                                 _buildTrainingTile(
//                                   context,
//                                   title: "Infection Control Training",
//                                   description:
//                                       "Learn best practices for infection prevention.",
//                                   progress: 0.7,
//                                   icon: Icons.health_and_safety,
//                                 ),
//                                 _buildTrainingTile(
//                                   context,
//                                   title: "Medical Equipment Usage",
//                                   description:
//                                       "Understand hospital equipment handling.",
//                                   progress: 0.4,
//                                   icon: Icons.biotech,
//                                 ),
//                                 _buildTrainingTile(
//                                   context,
//                                   title: "Patient Care Guidelines",
//                                   description:
//                                       "Improve patient interactions and care standards.",
//                                   progress: 0.9,
//                                   icon: Icons.people,
//                                 ),
//                                 _buildTrainingTile(
//                                   context,
//                                   title: "Emergency Response Training",
//                                   description:
//                                       "Prepare for handling emergencies effectively.",
//                                   progress: 0.2,
//                                   icon: Icons.warning,
//                                 ),
//                                 _buildTrainingTile(
//                                   context,
//                                   title: "Ethics and Compliance",
//                                   description:
//                                       "Adhere to ethical practices and hospital policies.",
//                                   progress: 0.6,
//                                   icon: Icons.gavel,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// Widget _buildTrainingTile(BuildContext context,
//     {required String title,
//     required String description,
//     required double progress,
//     required IconData icon}) {
//   return Card(
//     color: fifth,
//     margin: const EdgeInsets.symmetric(vertical: 10),
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(30),
//       side: BorderSide(color: fouth),
//     ),
//     elevation: 4,
//     child: InkWell(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (_) => TrainingDetailScreen(title: title)),
//         );
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Row(
//           children: [
//             CircleAvatar(
//               radius: 30,
//               backgroundColor: secondary.withOpacity(0.2),
//               child: Icon(icon, color: third, size: 30),
//             ),
//             SizedBox(width: 20),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       color: fouth,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     description,
//                     style: TextStyle(color: fouth.withOpacity(0.7)),
//                   ),
//                   SizedBox(height: 10),
//                   LinearProgressIndicator(borderRadius: BorderRadius.circular(30),
//                     value: progress,
//                     backgroundColor: fifth,
//                     color: primary,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// class TrainingDetailScreen extends StatelessWidget {
//   final String title;

//   const TrainingDetailScreen({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: fifth,
//         title: Text(
//           title,
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 17,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 color: fouth,
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               "This is where you can add detailed training content, such as text instructions, embedded videos, and quizzes to assess knowledge.",
//               style: TextStyle(color: fouth.withOpacity(0.7), fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            // Static gradient background
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "Training",
                    style: TextStyle(
                      color: fifth,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // TabBar
                TabBar(dividerColor: Colors.transparent,
                  labelColor: fifth,
                  unselectedLabelColor: fifth,
                  indicatorColor: fifth,
                  tabs: const [
                    Tab(text: "Assigned"),
                    Tab(text: "Pending"),
                    Tab(text: "Completed"),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: TabBarView(
                    children: [
                      _buildTrainingList(context, "Assigned"),
                      _buildTrainingList(context, "Pending"),
                      _buildTrainingList(context, "Completed"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrainingList(BuildContext context, String status) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
        color: fifth,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTrainingTile(
                context,
                title: "$status Training 1",
                description: "Description for $status training.",
                progress: 0.5,
                icon: Icons.school,
              ),
              _buildTrainingTile(
                context,
                title: "$status Training 2",
                description: "Another training under $status.",
                progress: 0.8,
                icon: Icons.book,
              ),
              // Add more training tiles based on the status
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTrainingTile(BuildContext context,
    {required String title,
    required String description,
    required double progress,
    required IconData icon}) {
  return Card(
    color: fifth,
    margin: const EdgeInsets.symmetric(vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
      side: BorderSide(color: fouth),
    ),
    elevation: 4,
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => TrainingDetailScreen(title: title)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: secondary.withOpacity(0.2),
              child: Icon(icon, color: third, size: 30),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: fouth,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(color: fouth.withOpacity(0.7)),
                  ),
                  const SizedBox(height: 10),
                  LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(30),
                    value: progress,
                    backgroundColor: fifth,
                    color: primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class TrainingDetailScreen extends StatelessWidget {
  final String title;

  const TrainingDetailScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fifth,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: fouth,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "This is where you can add detailed training content, such as text instructions, embedded videos, and quizzes to assess knowledge.",
              style: TextStyle(color: fouth, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
