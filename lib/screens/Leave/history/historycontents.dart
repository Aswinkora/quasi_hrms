import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:quasi_hrms/consts/lists.dart';

class Historycontents extends StatefulWidget {
  const Historycontents({super.key});

  @override
  State<Historycontents> createState() => _HistorycontentsState();
}

class _HistorycontentsState extends State<Historycontents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: leaveHistory.length,
              itemBuilder: (context, index) {
                final history = leaveHistory[index];
                Color statuscolor;
                switch (history['status']) {
                  case 'Approved':
                    statuscolor = const Color.fromARGB(118, 173, 237, 175);
                  case 'Rejacted':
                    statuscolor = Colors.red;

                  default:
                    statuscolor = Colors.orange;
                }

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: 148,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: fifth,
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  history['applicationType'],
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${history['from']} ",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(history['type']),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        156, 255, 255, 255),
                                    child: Icon(Icons.arrow_forward_ios),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: List.generate(history['steps'].length,
                                  (stepindex) {
                                bool iscomplete =
                                    stepindex < history['currentstep'];
                                return Expanded(
                                    child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: iscomplete
                                          ? Colors.deepPurple
                                          : Colors.black12,
                                      child: Text(
                                        "${stepindex + 1}",
                                        style: TextStyle(
                                          color: iscomplete
                                              ? Colors.white
                                              : Colors.black54,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      history['steps'][stepindex],
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: iscomplete
                                            ? Colors.deepPurple
                                            : Colors.black54,
                                      ),
                                    ),
                                    if (stepindex < history['steps'].length - 1)
                                      Expanded(
                                        child: Container(
                                          height: 2,
                                          color: iscomplete
                                              ? Colors.deepPurple
                                              : Colors.grey.shade300,
                                        ),
                                      ),
                                  ],
                                ));
                              }),
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
        )
      ],
    );
  }
}
