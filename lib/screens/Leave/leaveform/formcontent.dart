// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:intl/intl.dart';

// class Formcontent extends StatefulWidget {
//   const Formcontent({super.key});

//   @override
//   State<Formcontent> createState() => _FormcontentState();
// }

// class _FormcontentState extends State<Formcontent> {
//   DateTime? leavedate;
//   DateTime? returndate;
//   int numberofleave =1;
// TextEditingController dateofleave =TextEditingController();
// TextEditingController dateofreturn=TextEditingController();
//  TextEditingController leaveDaysController = TextEditingController(text: '1'); 
// void datepicker()async{
// DateTime?pickeddate=await showDatePicker(
//   context: context, 
//   initialDate:DateTime.now() ,
//   firstDate: DateTime(2025), lastDate: DateTime(2030));

//   if(pickeddate!=null){
//     setState(() {
//       leavedate=pickeddate;
//       dateofleave.text=DateFormat('dd-MM-yyyy').format(pickeddate);
//     });
//     calculatereturndate();
//   }
// }
//   void calculatereturndate() {
//     if(leavedate !=null && numberofleave>0){
//       returndate=leavedate!.add(Duration(days: numberofleave));
//       dateofreturn.text=DateFormat('dd-MM-yyyy').format(returndate!);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Container(
//           padding: EdgeInsets.all(8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: SizedBox(
//                     height: 200,
//                     child: Image.asset('assets/images/leaveform.png')),
//               ),
//               Row(
//                 spacing: 20,

//                 children: [
//                   Text('Number of leaves',
//                    style: TextStyle(
//                     color: fouth, height: 3, fontWeight: FontWeight.w900),
//                   ),
//                     SizedBox(
//                       width: 200,
//                       height: 50,
//                       child: TextFormField(
//                         controller: leaveDaysController,
//           keyboardType: TextInputType.number,
//           decoration: InputDecoration(
//             hintText: 'Enter number of days',
//             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//           ),
//           onChanged: (value) {
//             setState(() {
//               numberofleave= int.tryParse(value) ?? 1;
//               calculatereturndate();
//             });
//           },
//                       )
//                     ),
//                 ],
//               ),
//               Text(
//                 'Leave Type',
//                 style: TextStyle(
//                     color: fouth, height: 3, fontWeight: FontWeight.w900),
//               ),
//               DropdownButtonFormField(
//                 items: [],
//                 onChanged: (value) {},
//                 decoration: InputDecoration(
//                     hintText: 'Leave type',
//                     hintStyle: TextStyle(color: Colors.grey.shade500),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 spacing: 20,
//                 children: [
//                   Expanded(
//                       child: TextFormField(controller: dateofleave,onTap: () {
//                         datepicker();
//                       },
                        
//                     decoration: InputDecoration(
                      
//                         suffixIcon: ShaderMask(
//                             shaderCallback: (Rect bounds) {
//                               return LinearGradient(
//                                 colors: [primary, fouth],
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                               ).createShader(bounds);
//                             },
//                             blendMode: BlendMode.srcIn,
//                             child: Icon(
//                               Icons.calendar_month_outlined,
//                               size: 30,
//                             )),
//                         hintText: 'Date of leave',
//                         hintStyle: TextStyle(color: Colors.grey.shade500),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                   )),
//                   Expanded(
//                       child: TextFormField(
//                         controller: dateofreturn,
//                 readOnly: true,
//                     decoration: InputDecoration(
//                         suffixIcon: ShaderMask(
//                             shaderCallback: (Rect bounds) {
//                               return LinearGradient(
//                                 colors: [primary, fouth],
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                               ).createShader(bounds);
//                             },
//                             blendMode: BlendMode.srcIn,
//                             child: Icon(
//                               Icons.calendar_month_outlined,
//                               size: 30,
//                             )),
//                         hintText: 'Date of return',
//                         hintStyle: TextStyle(color: Colors.grey.shade500),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                   ))
//                 ],
//               ),
//               Text(
//                 'Reason for leave',
//                 style: TextStyle(
//                     color: fouth, height: 3, fontWeight: FontWeight.w900),
//               ),
//               TextFormField(
//                 minLines: 1,
//                 maxLines: 500,
//                 decoration: InputDecoration(
//                     hintText: 'Reason for leave',
//                     hintStyle: TextStyle(color: Colors.grey.shade500),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               ),
//                SizedBox(
//                                     height: 30,
//                                   ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: primary),
//                       borderRadius: BorderRadius.all(Radius.circular(23)),
//                     ),
//                     child: ElevatedButton(
//                         style: ButtonStyle(
//                             backgroundColor:
//                                 WidgetStatePropertyAll(Colors.transparent),
//                             shadowColor:
//                                 WidgetStatePropertyAll(Colors.transparent),
//                             fixedSize: WidgetStatePropertyAll(Size(150, 50))),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         child: Text(
//                           'Cancel ',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w900, color: primary),
//                         )),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [primary, fouth],
//                           begin: Alignment.topCenter,
//                           end: Alignment.centerRight),
//                       borderRadius: BorderRadius.all(Radius.circular(23)),
//                       // color: seventh
//                     ),
//                     child: ElevatedButton(
//                         style: ButtonStyle(
//                             backgroundColor:
//                                 WidgetStatePropertyAll(Colors.transparent),
//                             shadowColor:
//                                 WidgetStatePropertyAll(Colors.transparent),
//                             fixedSize: WidgetStatePropertyAll(Size(150, 50))),
//                         onPressed: () {},
//                         child: Text(
//                           'APPLY ',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w900, color: fifth),
//                         )),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
  
// }

// import 'package:flutter/material.dart';
// import 'package:hrms/consts/colors.dart';
// import 'package:intl/intl.dart';

// class Formcontent extends StatefulWidget {
//   const Formcontent({super.key});

//   @override
//   State<Formcontent> createState() => _FormcontentState();
// }

// class _FormcontentState extends State<Formcontent> {
//   DateTime? leavedate;
//   DateTime? returndate;
//   int numberofleave =1;
// TextEditingController dateofleave =TextEditingController();
// TextEditingController dateofreturn=TextEditingController();
//  TextEditingController leaveDaysController = TextEditingController(); 
// void datepicker()async{
// DateTime?pickeddate=await showDatePicker(
//   context: context, 
//   initialDate:DateTime.now() ,
//   firstDate: DateTime(2025), lastDate: DateTime(2030));

//   if(pickeddate!=null){
//     setState(() {
//       leavedate=pickeddate;
//       dateofleave.text=DateFormat('dd-MM-yyyy').format(pickeddate);
//     });
//     calculatereturndate();
//   }
// }
//   void calculatereturndate() {
//     if(leavedate !=null && numberofleave>0){
//       returndate=leavedate!.add(Duration(days: numberofleave));
//       dateofreturn.text=DateFormat('dd-MM-yyyy').format(returndate!);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//          Padding(
//            padding: const EdgeInsets.only(top: 5,left: 15,right: 10),
//            child: Column(
//              children: [
//                Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Number of leaves',
//                          style: TextStyle(
//                           color: Colors.black87, height: 3, fontWeight: FontWeight.w900),
//                         ),
//                           TextFormField(
//                             controller: leaveDaysController,
//                                           keyboardType: TextInputType.number,
//                                           decoration: InputDecoration(fillColor: const Color.fromARGB(132, 224, 219, 219),filled: true,
//                                             hintText: 'Enter number of days',
//                                             hintStyle: TextStyle(color: Colors.grey),
//                                              border: OutlineInputBorder(
//                                              borderRadius: BorderRadius.circular(20),
//                                              borderSide: BorderSide.none, 
//                                             ),
//                                           ),
//                                           onChanged: (value) {
//                                             if(value.isNotEmpty){
//                                               int number=int.tryParse(value)??0;
//                                               String Formatvalue=number.toString().padLeft(2,'0');
//                                               leaveDaysController.value=TextEditingValue(
//                                                 text: Formatvalue,
//                                                 selection: TextSelection.collapsed(offset: Formatvalue.length)
//                                               );
//                                               setState(() {
//                                                 numberofleave=number;
//                                                 calculatereturndate();
//                                               });
//                                             }
                                           
//                                           },
//                           ),
//                                         Text(
//                 'Description',
//                 style: TextStyle(
//                     color: Colors.black87, height: 3, fontWeight: FontWeight.w900),
//               ),
//               TextFormField(
//                 minLines: 1,
//                 maxLines: 500,
//                  textAlignVertical: TextAlignVertical.top,
//                 decoration: InputDecoration(
//                   isDense: false,
//                   filled: true,
//                   fillColor: const Color.fromARGB(132, 224, 219, 219),
//                     hintText: 'Description',
//                     hintStyle: TextStyle(color: Colors.grey.shade500),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         borderSide: BorderSide.none)),
//               ),
//                             Text(
//                 'Leave Type',
//                 style: TextStyle(
//                     color: fouth, height: 3, fontWeight: FontWeight.w900),
//               ),
//               DropdownButtonFormField(
//                 items: [],
//                 onChanged: (value) {},
//                 decoration: InputDecoration(filled: true,                  
//                 fillColor: const Color.fromARGB(132, 224, 219, 219),

//                     hintText: 'Leave type',
//                     hintStyle: TextStyle(color: primary),
//                     border: OutlineInputBorder(borderSide: BorderSide.none,
//                         borderRadius: BorderRadius.circular(20))),
//               ),
//               SizedBox(height: 20,),
//               Row(
//                 spacing: 20,
//                 children: [
//                   Expanded(
//                       child: Column(
//                         spacing: 10,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('From'),
//                           TextFormField(controller: dateofleave,onTap: () {
//                             datepicker();
//                           },
                          
                            
//                                               decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Color.fromARGB(132, 224, 219, 219),
//                             suffixIcon: ShaderMask(
//                                 shaderCallback: (Rect bounds) {
//                                   return LinearGradient(
//                                     colors: [primary, fouth],
//                                     begin: Alignment.topLeft,
//                                     end: Alignment.bottomRight,
//                                   ).createShader(bounds);
//                                 },
//                                 blendMode: BlendMode.srcIn,
//                                 child: Icon(
//                                   Icons.calendar_month_sharp,
//                                   size: 30,
//                                 )),
//                             hintText: 'DD/MM/YYYY',
//                             hintStyle: TextStyle(color: Colors.grey.shade500),
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(20))),
//                                             ),
//                         ],
//                       )),
//                   Expanded(
//                       child: Column(
//                         spacing: 10,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('To'),
//                           TextFormField(
//                             controller: dateofreturn,
                            
//                                           readOnly: true,
//                                               decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Color.fromARGB(132, 224, 219, 219),
//                             suffixIcon: ShaderMask(
//                                 shaderCallback: (Rect bounds) {
//                                   return LinearGradient(
//                                     colors: [fouth, primary,],
//                                     // begin: Alignment.topLeft,
//                                     // end: Alignment.bottomRight,
//                                   ).createShader(bounds);
//                                 },
//                                 blendMode: BlendMode.srcIn,
//                                 child: Icon(
//                                   Icons.calendar_month,
//                                   size: 30,
//                                 )),
//                             hintText: 'DD/MM/YYYY',
//                             hintStyle: TextStyle(color: Colors.grey.shade500),
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(20))),
//                                             ),
//                         ],
//                       ))
//                 ],
//               ),

//                       ],
//                     ),
//              ],
//            ),
//          ),
//       ],
//     );
//   }
  
// }

import 'package:flutter/material.dart';
import 'package:quasi_hrms/consts/colors.dart';
import 'package:intl/intl.dart';

class Formcontent extends StatefulWidget {
  const Formcontent({super.key});

  @override
  State<Formcontent> createState() => _FormcontentState();
}

class _FormcontentState extends State<Formcontent> {
  DateTime? leavedate;
  DateTime? returndate;
  int numberofleave = 1;
  String Leavemode='Full Day';

  final TextEditingController dateofleave = TextEditingController();
  final TextEditingController dateofreturn = TextEditingController();
  final TextEditingController leaveDaysController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String selectedLeaveType = 'Select Leave Type';
  void datepicker() async {
    DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025),
      lastDate: DateTime(2030),
    );

    if (pickeddate != null) {
      setState(() {
        leavedate = pickeddate;
        dateofleave.text = DateFormat('dd-MM-yyyy').format(pickeddate);
      });
      calculatereturndate();
    }
  }

  void calculatereturndate() {
    if (leavedate != null && numberofleave > 0) {
      returndate = leavedate!.add(Duration(days: numberofleave));
      dateofreturn.text = DateFormat('dd-MM-yyyy').format(returndate!);
    }
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      filled: true,
      fillColor: const Color.fromARGB(132, 224, 219, 219),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey.shade500),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      children: [
        // Number of leaves
        Text(
          'Number of leaves',
          style: TextStyle(
              color: Colors.black87, height: 2, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          controller: leaveDaysController,
          keyboardType: TextInputType.number,
          decoration: _inputDecoration('Enter number of days'),
          onChanged: (value) {
            if (value.isNotEmpty) {
              int number = int.tryParse(value) ?? 0;
              String formatValue = number.toString().padLeft(2, '0');
              leaveDaysController.value = TextEditingValue(
                text: formatValue,
                selection: TextSelection.collapsed(offset: formatValue.length),
              );
              setState(() {
                numberofleave = number;
                calculatereturndate();
              });
            }
          },
        ),
        const SizedBox(height: 16),

        // Description
        Text(
          'Description',
          style: TextStyle(
              color: Colors.black87, height: 2, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          controller: descriptionController,
          minLines: 3,
          maxLines: 5,
          textAlignVertical: TextAlignVertical.top,
          decoration: _inputDecoration('Description'),
        ),
        const SizedBox(height: 16),
      //  Leave mode
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('Leave Mode',
         style: TextStyle(
              color: Colors.black87, height: 2, fontWeight: FontWeight.w900),),
        Row(
          children: [
            Wrap(children: [
              ChoiceChip( shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
                label: Text('Full Day'), selected: Leavemode=='Full Day',
                 selectedColor: fouth, // your theme color
            backgroundColor:  const Color.fromARGB(132, 224, 219, 219),
            labelStyle: TextStyle(
              color: Leavemode == 'Full Day' ? Colors.white : Colors.black12,
              fontWeight: FontWeight.w600,
            ),
            onSelected: (bool selected) {
              setState(() {
                Leavemode = 'Full Day';
              });
            },
                ),
                SizedBox(width: 20,),
                 ChoiceChip(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
            label: const Text('Half Day'),
            selected: Leavemode == 'Half Day',
            selectedColor: fouth,
            backgroundColor: const Color.fromARGB(128, 238, 236, 236),
            labelStyle: TextStyle(
              color: Leavemode == 'Half Day' ? Colors.white : Colors.black12,
              fontWeight: FontWeight.w600,
            ),
            onSelected: (bool selected) {
              setState(() {
                Leavemode = 'Half Day';
              });
            },
          ),
            ],)
          ],
        )
      ],),
              const SizedBox(height: 16),

        // Leave Type
        Text(
          'Leave Type',
          style: TextStyle(
               height: 2, fontWeight: FontWeight.w900),
        ),
      GestureDetector(
         onTap: _showLeaveType,
        child: Container(
          padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(132, 224, 219, 219),
                    borderRadius: BorderRadius.circular(20),
                  ),child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedLeaveType,
                        style: TextStyle(
                          color: selectedLeaveType == 'Select Leave Type'
                              ? Colors.grey.shade500
                              : Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down, color: primary),
                    ],
                  ),
        ),
      ),
        const SizedBox(height: 20),

        // Date Row
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('From'),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: dateofleave,
                    readOnly: true,
                    onTap: datepicker,
                    decoration: _inputDecoration('DD/MM/YYYY').copyWith(
                      suffixIcon: ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            colors: [primary, fouth],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.srcIn,
                        child: const Icon(Icons.calendar_month_sharp, size: 28),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('To'),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: dateofreturn,
                    readOnly: true,
                    decoration: _inputDecoration('DD/MM/YYYY').copyWith(
                      suffixIcon: ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            colors: [fouth, primary],
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.srcIn,
                        child: const Icon(Icons.calendar_month, size: 28),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),

        // Submit Button
        // SizedBox(
        //   width: double.infinity,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: fouth,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(20),
        //       ),
        //       padding: const EdgeInsets.symmetric(vertical: 14),
        //     ),
        //     onPressed: () {
        //       // Submit action
        //     },
        //     child: const Text(
        //       'Submit',
        //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // ),
                      Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: primary),
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                    ),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.transparent),
                            shadowColor:
                                WidgetStatePropertyAll(Colors.transparent),
                            fixedSize: WidgetStatePropertyAll(Size(150, 50))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel ',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: primary),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color.fromARGB(255, 158, 74, 210), Color.fromARGB(242, 12, 105, 235)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                          ),
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                      // color: seventh
                    ),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.transparent),
                            shadowColor:
                                WidgetStatePropertyAll(Colors.transparent),
                            fixedSize: WidgetStatePropertyAll(Size(150, 50))),
                        onPressed: () {},
                        child: Text(
                          'APPLY ',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: fifth),
                        )),
                  ),
                ],
              )
            

      ],
    );
  }


// void _showLeaveType() {
//   showBottomSheet(
//     context: context, 
//      shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//     builder: (context){
//       return Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Select Leave Type',
//                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               _leaveTypeTile('Sick Leave'),
//               _leaveTypeTile('Casual Leave'),
//               _leaveTypeTile('Earned Leave'),
//               _leaveTypeTile('Maternity/Paternity Leave'),
//             ],
//           ),
//         );
//     });
// }


// Widget _leaveTypeTile(String type) {
//     return ListTile(
//       title: Center(child: Text(type)),
//       onTap: () {
//         setState(() => selectedLeaveType = type);
//         Navigator.pop(context);
//       },
//     );
//   }}

Future <void> _showLeaveType()async {

 await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close button
           
            const SizedBox(height: 10),

            // Leave type options
            _leaveTypeTile('Annual'),
            _leaveTypeTile('Casual'),
            _leaveTypeTile('Sick'),
            _leaveTypeTile('Unpaid'),
            const SizedBox(height: 20),

            // Confirm button
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

Widget _leaveTypeTile(
    String type,) {
  final bool isSelected = selectedLeaveType == type;

  return GestureDetector(
    onTap: () {
    setState(() {
      selectedLeaveType=type;
    });
    Navigator.pop(context);// to update highlight
    },
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: isSelected ? Colors.grey[200] : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          type,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ),
    ),
  );
}

}