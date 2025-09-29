import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';

class LetterScreen extends StatefulWidget {
  const LetterScreen({super.key});

  @override
  State<LetterScreen> createState() => _LetterScreenState();
}

class _LetterScreenState extends State<LetterScreen> {
    List<Map<String, String>> letters = [
    {'name': 'Experience Letter', 'status': 'Available'},
    {'name': 'Relieving Letter', 'status': 'Pending Approval'},
    {'name': 'Transfer Certificate', 'status': 'Available'},
    {'name': 'Tax Declaration Letter', 'status': 'Requested'},
    {'name': 'Increment Letter', 'status': 'Available'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 110),
                    child: Text(
                      "Letters",
                      style: TextStyle(
                          color: fifth,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: fifth,
                      ),
                      height: MediaQuery.sizeOf(context).height / 1.2,
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            childAspectRatio: 1,
                          ),
                          itemCount:letters.length,
                          itemBuilder: (context, index) {
                            final department = letters[index];
                            // String photoUrl = IconsPath + (department.icon ?? '');
                        
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                 gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: <Color>[primary, secondary],
                                  ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // CircleAvatar(
                                  //   // backgroundImage: (department.icon != null &&
                                  //   //         department.icon!.isNotEmpty)
                                  //   //     ? NetworkImage(photoUrl)
                                  //   //     : NetworkImage(""),
                                  //   radius: 40,
                                  //   backgroundColor: Colors.grey.shade200,
                                  // ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${department['name']}',
                                          textAlign: TextAlign.center,
                                          style:  TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: fifth
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
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
}



// import 'package:flutter/material.dart';



// class LetterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LettersScreen(),
//     );
//   }
// }

// class LettersScreen extends StatefulWidget {
//   @override
//   _LettersScreenState createState() => _LettersScreenState();
// }

// class _LettersScreenState extends State<LettersScreen> {
//   List<Map<String, String>> letters = [
//     {'name': 'Offer Letter', 'status': 'Available'},
//     {'name': 'Experience Letter', 'status': 'Pending Approval'},
//     {'name': 'Salary Certificate', 'status': 'Available'},
//     {'name': 'Relieving Letter', 'status': 'Requested'},
//     {'name': 'Increment Letter', 'status': 'Available'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ESS Letters'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: ListView.builder(
//           itemCount: letters.length,
//           itemBuilder: (context, index) {
//             return Card(
//               elevation: 3,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: ListTile(
//                 title: Text(
//                   letters[index]['name']!,
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 subtitle: Text('Status: ${letters[index]['status']}'),
//                 trailing: _buildActionButton(letters[index]['status']!),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildActionButton(String status) {
//     if (status == 'Available') {
//       return ElevatedButton(
//         onPressed: () {},
//         child: Text('Download'),
//         style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//       );
//     } else if (status == 'Requested' || status == 'Pending Approval') {
//       return Text(
//         status,
//         style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//       );
//     } else {
//       return ElevatedButton(
//         onPressed: () {
//           setState(() {
//             letters.firstWhere((letter) => letter['status'] == 'Request')['status'] = 'Requested';
//           });
//         },
//         child: Text('Request'),
//         style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//       );
//     }
//   }
// }
