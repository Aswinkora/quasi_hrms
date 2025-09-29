

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart'; // To pick images (if needed)
// import 'package:file_picker/file_picker.dart'; // To pick PDF files


// class Travelexpensecontents extends StatefulWidget {
//   @override
//   _TravelExpenseScreenState createState() => _TravelExpenseScreenState();
// }

// class _TravelExpenseScreenState extends State<Travelexpensecontents> {
//   List<Map<String, String>> expenses = [];

//   void _submitExpense(Map<String, String> expense) {
//     setState(() {
//       expenses.add(expense);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           ExpenseForm(onSubmit: _submitExpense),
//           // SizedBox(height: 20),
//           Expanded(child: ExpenseList(expenses: expenses)),
//         ],
//       ),
//     );
//   }
// }

// class ExpenseForm extends StatefulWidget {
//   final Function(Map<String, String>) onSubmit;

//   ExpenseForm({required this.onSubmit});

//   @override
//   _ExpenseFormState createState() => _ExpenseFormState();
// }

// class _ExpenseFormState extends State<ExpenseForm> {
//   final TextEditingController employeeIdController = TextEditingController();
//   final TextEditingController employeeNameController = TextEditingController();
//   final TextEditingController departmentController = TextEditingController();
//   final TextEditingController tripNameController = TextEditingController();
//   final TextEditingController destinationController = TextEditingController();
//   final TextEditingController amountController = TextEditingController();
//   final TextEditingController descriptionController = TextEditingController();
//   DateTime? startDate;
//   DateTime? endDate;
//   String selectedCategory = 'Transportation';
//   XFile? attachment;

//   void _handleSubmit() {
//     final expense = {
//       'employeeId': employeeIdController.text,
//       'employeeName': employeeNameController.text,
//       'department': departmentController.text,
//       'tripName': tripNameController.text,
//       'destination': destinationController.text,
//       'startDate': startDate.toString(),
//       'endDate': endDate.toString(),
//       'category': selectedCategory,
//       'amount': amountController.text,
//       'description': descriptionController.text,
//     };

//     // Pass the collected data to the parent widget (TravelExpenseScreen)
//     widget.onSubmit(expense);

//     // Optionally, clear the form after submission
//     setState(() {
//       employeeIdController.clear();
//       employeeNameController.clear();
//       departmentController.clear();
//       tripNameController.clear();
//       destinationController.clear();
//       amountController.clear();
//       descriptionController.clear();
//       startDate = null;
//       endDate = null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Add Travel Expense',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blueAccent),
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Expanded(
//                     child: _buildTextField(employeeIdController, 'Employee ID')),
//                     SizedBox(width: 10,),
//                 Expanded(
//                     child:
//                         _buildTextField(employeeNameController, 'Employee Name')),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                     child: _buildTextField(departmentController, 'Department')),
//                     SizedBox(width: 10,),
//                 Expanded(
//                     child: _buildTextField(tripNameController, 'Trip Name/ID')),
//               ],
//             ),
//             _buildTextField(destinationController, 'Destination'),
      
//             Row(
//               children: [
//                 Expanded(
//                   child: _buildDateSelector('Start Date', startDate, (picked) {
//                     setState(() {
//                       startDate = picked;
//                     });
//                   }),
//                 ),
//                 Expanded(
//                   child: _buildDateSelector('End Date', endDate, (picked) {
//                     setState(() {
//                       endDate = picked;
//                     });
//                   }),
//                 ),
//               ],
//             ),
      
//             _buildCategoryDropdown(),
      
//             Row(
//               children: [
//                 Expanded(
//                     child: _buildTextField(amountController, 'Amount',
//                         isNumber: true)),SizedBox(width: 10,),
//                 Expanded(
//                     child: _buildTextField(descriptionController, 'Description')),
//               ],
//             ),
      
//             _buildAttachmentButton(),
      
//             Row(
//               children: [
//                 Expanded(
//                     child: _buildTextField(
//                   descriptionController,
//                   'Additional Information (Justification or Notes)',maxLines: 2
//                 )),SizedBox(width: 10,),
//                 Expanded(child: _buildSubmitButton()),
//               ],
//             ),
      
//             // SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(TextEditingController controller, String label,
//       {bool isNumber = false, int maxLines = 1}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: TextField(
//         controller: controller,
//         decoration: InputDecoration(
//           labelText: label,
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
//           contentPadding:
//               EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
//         ),
//         keyboardType: isNumber ? TextInputType.number : TextInputType.text,
//         maxLines: maxLines,
//       ),
//     );
//   }

//   Widget _buildDateSelector(String label, DateTime? selectedDate,
//       Function(DateTime?) onDateSelected) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Column(
//         children: [
//           Text("$label: ", style: TextStyle(fontSize: 16)),
//           ElevatedButton(
//             onPressed: () async {
//               final DateTime? picked = await showDatePicker(
//                 context: context,
//                 initialDate: DateTime.now(),
//                 firstDate: DateTime(2000),
//                 lastDate: DateTime(2101),
//               );
//               onDateSelected(picked);
//             },
//             child: Text(
//               selectedDate == null
//                   ? 'Select Date'
//                   : selectedDate.toLocal().toString().split(' ')[0],
//               style: TextStyle(fontSize: 14),
//             ),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blueAccent,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0)),
//               padding: EdgeInsets.symmetric(horizontal: 20.0),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCategoryDropdown() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: DropdownButton<String>(
//         value: selectedCategory,
//         onChanged: (newValue) {
//           setState(() {
//             selectedCategory = newValue!;
//           });
//         },
//         items: ['Transportation', 'Lodging', 'Meals', 'Other Expenses']
//             .map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//         isExpanded: true,
//         style: TextStyle(fontSize: 16, color: Colors.black),
//         iconEnabledColor: Colors.blueAccent,
//       ),
//     );
//   }

//   Widget _buildAttachmentButton() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           ElevatedButton.icon(
//             onPressed: () async {
//               // Pick either an image or PDF file
//               final result = await FilePicker.platform.pickFiles(
//                 type: FileType.custom,
//                 allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf'],
//               );

//               if (result != null) {
//                 setState(() {
//                   attachment = XFile(result.files.single.path!);
//                 });
//               }
//             },
//             icon: Icon(Icons.attach_file, color: Colors.white),
//             label: Text('Add Attachment'),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blueAccent,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12.0)),
//             ),
//           ),
//           SizedBox(width: 10),
//           if (attachment != null)
//             Text('Attached: ${attachment!.name}',
//                 style: TextStyle(color: Colors.blueAccent)),
//         ],
//       ),
//     );
//   }

//   Widget _buildSubmitButton() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: ElevatedButton(
//         onPressed: _handleSubmit,
//         child: Text('Submit Expense',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.green,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//           padding: EdgeInsets.symmetric(vertical: 14.0),
//           minimumSize: Size(double.infinity, 50),
//         ),
//       ),
//     );
//   }
// }

// class ExpenseList extends StatelessWidget {
//   final List<Map<String, String>> expenses;

//   ExpenseList({required this.expenses});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: expenses.length,
//       itemBuilder: (context, index) {
//         return Card(
//           elevation: 4.0,
//           margin: EdgeInsets.symmetric(vertical: 8.0),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//           child: ListTile(
//             title: Text('Trip ID: ${expenses[index]['tripId']}'),
//             subtitle: Text(
//                 'Destination: ${expenses[index]['destination']} \nAmount: \$${expenses[index]['amount']}'),
//             // trailing: Chip(
//             //   label: Text(
//             //     expenses[index]['status']!,
//             //     style: TextStyle(color: Colors.white),
//             //   ),
//             //   backgroundColor: expenses[index]['status'] == 'Approved' ? Colors.green : Colors.orange,
//             // ),
//             onTap: () {
//               print('Expense Tapped');
//             },
//           ),
//         );
//       },
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // To pick images (if needed)
import 'package:file_picker/file_picker.dart'; // To pick PDF files

class Travelexpensecontents extends StatefulWidget {
  @override
  _TravelExpenseScreenState createState() => _TravelExpenseScreenState();
}

class _TravelExpenseScreenState extends State<Travelexpensecontents> {
  List<Map<String, String>> expenses = [];

  void _submitExpense(Map<String, String> expense) {
    setState(() {
      expenses.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ExpenseForm(onSubmit: _submitExpense),
          // SizedBox(height: 20),
          Expanded(child: ExpenseList(expenses: expenses)),
        ],
      ),
    );
  }
}

class ExpenseForm extends StatefulWidget {
  final Function(Map<String, String>) onSubmit;

  ExpenseForm({required this.onSubmit});

  @override
  _ExpenseFormState createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final TextEditingController employeeIdController = TextEditingController();
  final TextEditingController employeeNameController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController tripNameController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  DateTime? startDate;
  DateTime? endDate;
  String selectedCategory = 'Transportation';
  XFile? attachment;

  void _handleSubmit() {
    final expense = {
      'employeeId': employeeIdController.text,
      'employeeName': employeeNameController.text,
      'department': departmentController.text,
      'tripName': tripNameController.text,
      'destination': destinationController.text,
      'startDate': startDate.toString(),
      'endDate': endDate.toString(),
      'category': selectedCategory,
      'amount': amountController.text,
      'description': descriptionController.text,
    };

    // Pass the collected data to the parent widget (TravelExpenseScreen)
    widget.onSubmit(expense);

    // Optionally, clear the form after submission
    setState(() {
      employeeIdController.clear();
      employeeNameController.clear();
      departmentController.clear();
      tripNameController.clear();
      destinationController.clear();
      amountController.clear();
      descriptionController.clear();
      startDate = null;
      endDate = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // Make the form scrollable to prevent overflow
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Travel Expense',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: _buildTextField(employeeIdController, 'Employee ID')),
                SizedBox(width: 10,),
                Expanded(
                    child:
                        _buildTextField(employeeNameController, 'Employee Name')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: _buildTextField(departmentController, 'Department')),
                SizedBox(width: 10,),
                Expanded(
                    child: _buildTextField(tripNameController, 'Trip Name/ID')),
              ],
            ),
            _buildTextField(destinationController, 'Destination'),
            Row(
              children: [
                Expanded(
                  child: _buildDateSelector('Start Date', startDate, (picked) {
                    setState(() {
                      startDate = picked;
                    });
                  }),
                ),
                Expanded(
                  child: _buildDateSelector('End Date', endDate, (picked) {
                    setState(() {
                      endDate = picked;
                    });
                  }),
                ),
              ],
            ),

            _buildCategoryDropdown(),

            Row(
              children: [
                Expanded(
                    child: _buildTextField(amountController, 'Amount',
                        isNumber: true)),SizedBox(width: 10,),
                Expanded(
                    child: _buildTextField(descriptionController, 'Description')),
              ],
            ),

            _buildAttachmentButton(),

            Row(
              children: [
                Expanded(
                    child: _buildTextField(
                  descriptionController,
                  'Additional Information (Justification or Notes)',maxLines: 2
                )),SizedBox(width: 10,),
                Expanded(child: _buildSubmitButton()),
              ],
            ),
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label,
      {bool isNumber = false, int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          contentPadding:
              EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
        ),
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        maxLines: maxLines,
      ),
    );
  }

  Widget _buildDateSelector(String label, DateTime? selectedDate,
      Function(DateTime?) onDateSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Text("$label: ", style: TextStyle(fontSize: 16)),
          ElevatedButton(
            onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              onDateSelected(picked);
            },
            child: Text(
              selectedDate == null
                  ? 'Select Date'
                  : selectedDate.toLocal().toString().split(' ')[0],
              style: TextStyle(fontSize: 14),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButton<String>(
        value: selectedCategory,
        onChanged: (newValue) {
          setState(() {
            selectedCategory = newValue!;
          });
        },
        items: ['Transportation', 'Lodging', 'Meals', 'Other Expenses']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        isExpanded: true,
        style: TextStyle(fontSize: 16, color: Colors.black),
        iconEnabledColor: Colors.blueAccent,
      ),
    );
  }

  Widget _buildAttachmentButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          ElevatedButton.icon(
            onPressed: () async {
              // Pick either an image or PDF file
              final result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf'],
              );

              if (result != null) {
                setState(() {
                  attachment = XFile(result.files.single.path!);
                });
              }
            },
            icon: Icon(Icons.attach_file, color: Colors.white),
            label: Text('Add Attachment'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
            ),
          ),
          SizedBox(width: 10),
          if (attachment != null)
            Text('Attached: ${attachment!.name}',
                style: TextStyle(color: Colors.blueAccent)),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        onPressed: _handleSubmit,
        child: Text('Submit Expense',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          padding: EdgeInsets.symmetric(vertical: 14.0),
          minimumSize: Size(double.infinity, 50),
        ),
      ),
    );
  }
}

class ExpenseList extends StatelessWidget {
  final List<Map<String, String>> expenses;

  ExpenseList({required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4.0,
          margin: EdgeInsets.symmetric(vertical: 8.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: ListTile(
            title: Text('Trip ID: ${expenses[index]['tripId']}'),
            subtitle: Text(
                'Destination: ${expenses[index]['destination']} \nAmount: \$${expenses[index]['amount']}'),
            // trailing: Chip(
            //   label: Text(
            //     expenses[index]['status']!,
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   backgroundColor: expenses[index]['status'] == 'Approved' ? Colors.green : Colors.orange,
            // ),
            onTap: () {
              print('Expense Tapped');
            },
          ),
        );
      },
    );
  }
}

