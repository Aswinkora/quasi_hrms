
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:hrms/consts/lists.dart';
// import 'package:hrms/screens/Leave/history/history.dart';
// import 'package:hrms/screens/Leave/leaveform/leaveform.dart';

// class Leavecontent extends StatefulWidget {
//   const Leavecontent({super.key});

//   @override
//   State<Leavecontent> createState() => _LeavecontentState();
// }

// class _LeavecontentState extends State<Leavecontent> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(0.0),
//           child: Container(
//             decoration: BoxDecoration(
//               border: Border.all(color: primary),
//               borderRadius: BorderRadius.all(Radius.circular(33)),
//               gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: <Color>[primary, secondary],
//               ),
//             ),
//             width: MediaQuery.of(context).size.width * 0.9,
//             height: 220,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
//               child: LineChart(
//                 LineChartData(
//                   maxY: 6, // Adjust max Y value as needed
//                   lineBarsData: _buildBarGroups(),
//                   titlesData: FlTitlesData(
//                     bottomTitles: AxisTitles(
//                       sideTitles: SideTitles(
//                         reservedSize: 20,
//                         showTitles: true,
//                         getTitlesWidget: (value, meta) {
//                           if (value.toInt() >= 0 &&
//                               value.toInt() < monthLabels.length) {
//                             return Padding(
//                                 padding: const EdgeInsets.only(top: 8.0),
//                                 child: Text(
//                                   monthLabels[value.toInt()],
//                                   style: TextStyle(
//                                     color: fifth,
//                                     fontSize: 10,
//                                   ),
//                                 ));
//                           }
//                           return Container();
//                         },
//                       ),
//                     ),
//                     topTitles:
//                         AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                     rightTitles:
//                         AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                     leftTitles: AxisTitles(
//                       sideTitles: SideTitles(
//                         showTitles: false,
//                         reservedSize: 30,
//                         interval: 1,
//                         getTitlesWidget: (value, meta) {
//                           return Text(
//                             value.toInt().toString(),
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 10,
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                   gridData: FlGridData(show: false),
//                   borderData: FlBorderData(show: false),
//                 ),
//                 duration: Duration(milliseconds: 1000),
//                 curve: Curves.easeInOut,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 400,
//           height: 190,
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 30),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => History()));
//                         },
//                         child: Text(
//                           'Leave History>',
//                           style: TextStyle(color: primary),
//                         ))
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: MediaQuery.sizeOf(context).width / 57,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     height: 75,
//                     width: MediaQuery.sizeOf(context).width / 2.5,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: fifth,
//                         border: Border.all(color: primary)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
                             
//                               Text(
//                                 'Sick leave',
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     color: fouth,
//                                     fontWeight: FontWeight.w800),
//                               ),
//                             ],
//                           ),
//                           Text('Available:'),
//                           Text(
//                             'Taken:6',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     height: 75,
//                     width: MediaQuery.sizeOf(context).width / 2.5,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: fifth,
//                         border: Border.all(color: primary)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Casual leave',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: fouth,
//                                 fontWeight: FontWeight.w800),
//                           ),
//                           Text('Available:'),
//                           Text(
//                             'Taken:6',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     height: 75,
//                     width: MediaQuery.sizeOf(context).width / 2.5,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: fifth,
//                         border: Border.all(color: primary)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'vacation',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: fouth,
//                                 fontWeight: FontWeight.w800),
//                           ),
//                           Text('Available:'),
//                           Text(
//                             'Taken:6',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     height: 75,
//                     width: MediaQuery.sizeOf(context).width / 2.5,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: fifth,
//                         border: Border.all(color: primary)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'pay Leave',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: fouth,
//                                 fontWeight: FontWeight.w800),
//                           ),
//                           Text('Available:'),
//                           Text(
//                             'Taken:6',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(23)),
//                 gradient: LinearGradient(
//                     colors: [primary, fouth],
//                     begin: Alignment.topCenter,
//                     end: Alignment.centerRight)),
//             child: ElevatedButton(
//                 style: ButtonStyle(
//                     backgroundColor: WidgetStatePropertyAll(
//                         // const Color.fromARGB(255, 9, 72, 174)
//                         Colors.transparent),
//                     shadowColor: WidgetStatePropertyAll(
//                         // const Color.fromARGB(255, 180, 209, 233)
//                         Colors.transparent),
//                     fixedSize: WidgetStatePropertyAll(Size(343, 50))),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => Leaveformmain()));
//                 },
//                 child: Text(
//                   'Request LEAVE',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w800,
//                       fontSize: 15),
//                 )),
//           ),
//         )
//       ],
//     );
//   }

//   List< LineChartBarData> _buildBarGroups() {
//   List<FlSpot>sickSpots=[];
//   List<FlSpot> casualSpots = [];
//   List<FlSpot> vacationSpots = [];
//   List<FlSpot> paySpots = [];
//    for (int i = 0; i < monthlyLeaveData.length; i++) {
//     final data = monthlyLeaveData[i];
//     sickSpots.add(FlSpot(i.toDouble(), data["Sick"]!));
//     casualSpots.add(FlSpot(i.toDouble(), data["Casual"]!));
//     vacationSpots.add(FlSpot(i.toDouble(), data["Vacation"]!));
//     paySpots.add(FlSpot(i.toDouble(), data["Pay"]!));
//   }
//     return [
//       _buildBar(sickSpots, Colors.white),
//       _buildBar(casualSpots, Colors.blue),
//       _buildBar(vacationSpots, Colors.amber),
//       _buildBar(paySpots, secondary)
//     ];
//   }

//   LineChartBarData _buildBar(List<FlSpot>spots, Color color) {
//     return LineChartBarData(
//      spots: spots,
//     isCurved: false,
//     color: color,
//     barWidth: 3,
//     isStrokeCapRound: false,
//     belowBarData: BarAreaData(show: false),
//     );
//   }
// }


import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/consts/lists.dart';
import 'package:quasi_hrms/screens/Leave/contents/leavebalance.dart';
import 'package:quasi_hrms/screens/Leave/history/history.dart';
import 'package:quasi_hrms/screens/Leave/leaveform/leaveform.dart';

class Leavecontent extends StatefulWidget {
  const Leavecontent({super.key});

  @override
  State<Leavecontent> createState() => _LeavecontentState();
}

class _LeavecontentState extends State<Leavecontent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Leavebalance(),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Leave history',style: TextStyle(fontSize: 17,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600),),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>History()));
                  },
                  child: CircleAvatar(
                          backgroundColor: fifth,
                          child: Icon(Icons.arrow_outward_outlined),
                         ),
                )
              ],
            ),
          ),
            SizedBox(
              height: 145,
              child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: leaveHistory.length > 1 ? 1 : leaveHistory.length,
                        itemBuilder: (context, index) {
              final history = leaveHistory[index];
              Color statuscolor;
              switch (history['status']){
                case 'Approved':
                statuscolor=const Color.fromARGB(118, 173, 237, 175);
                case'Rejacted':
                statuscolor=Colors.red;

                default :
                statuscolor=Colors.orange;
              }
              
              return Container(
                padding: EdgeInsets.all(8),
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: fifth,
                  border: Border.all(color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(history['applicationType'],style: TextStyle(color: Colors.black38),),
                          
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${history['from']} ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                               Text(history['type']),
                            ],
                          ),
                           CircleAvatar(
                                                   
                                                   backgroundColor: const Color.fromARGB(156, 255, 255, 255),
                                                   child: Icon(Icons.arrow_forward_ios),
                                                  )
                        ],
                      ),
                     Row(
                      children: List.generate(history['steps'].length, (stepindex){
                        bool iscomplete =stepindex<history['currentstep'];
                        return Expanded(
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: iscomplete?Colors.deepPurple:Colors.black12,
                                child:  Text("${stepindex+1}",
                               style: TextStyle(
                                color: iscomplete
                                    ? Colors.white
                                    : Colors.black54,
                                fontSize: 12,
                              ),),
                              ),
                           Text(history['steps'][stepindex],
                           style: TextStyle(
                                fontSize: 12,
                                color: iscomplete ? Colors.deepPurple : Colors.black54,
                              ),),
                              
                             
                              if(stepindex<history['steps'].length-1)
                              Expanded(child:Container(
                                height: 2,
                                color: iscomplete
                                    ? Colors.deepPurple
                                    : Colors.grey.shade300,
                              ),),
                              
                              
                            ],
                          ));
                      }),
                      
                     ),
                      
                    ],
                  ),
                ),
              );
                        },
                      ),
            ),

                Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(23)),
                gradient: LinearGradient(
                    colors: [primary, fouth],
                    begin: Alignment.topCenter,
                    end: Alignment.centerRight)),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        // const Color.fromARGB(255, 9, 72, 174)
                        Colors.transparent),
                    shadowColor: WidgetStatePropertyAll(
                        // const Color.fromARGB(255, 180, 209, 233)
                        Colors.transparent),
                    fixedSize: WidgetStatePropertyAll(Size(343, 50))),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Leaveformmain()));
                },
                child: Text(
                  'Request LEAVE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 15),
                )),
          ),
        )

      ],
    );
  }



}

