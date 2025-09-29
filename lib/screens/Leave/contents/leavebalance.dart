import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/consts/lists.dart';

class Leavebalance extends StatefulWidget {
  const Leavebalance({super.key});

  @override
  State<Leavebalance> createState() => _LeavebalanceState();
}

class _LeavebalanceState extends State<Leavebalance> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(padding: EdgeInsets.only(right: 5,left: 5,top: 20),
      shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: 1.1), 
      itemCount:leavedetails.length ,
      itemBuilder: (context, index) {
        final data=leavedetails[index];
        return Padding(
          padding: const EdgeInsets.only(left: 5,bottom: 15),
          child: Container(
           margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color.fromARGB(63, 197, 195, 195),
              borderRadius: BorderRadius.circular(35)
            ),
            child: Column(
              children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(data['leavetype'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                       CircleAvatar(
                        backgroundColor: fifth,
                        child: Icon(Icons.arrow_outward_outlined),
                       )
                     ],
                   ),
                 ),
               Padding(
                 padding: EdgeInsets.only(left: 10),
                 child: Row(
                   children: [
                    Text('Balance : ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                     Text(data['balance'],style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                   ],
                 ),
               ),
                Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text('Taken : ',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),),
                      Text(data['Totalleave'],style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        );
      },);
  }
}