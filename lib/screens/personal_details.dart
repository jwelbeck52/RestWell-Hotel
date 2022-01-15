// import 'package:flutter/material.dart';
// import 'package:resevation_mgt/widgets/appbar.dart';
// import 'package:resevation_mgt/widgets/drawer.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../models/reservation.dart';

// class PersonalDetailsScreen extends StatefulWidget {
//   @override
//   State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
// }

// class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
//   String single = '',
//       double = '',
//       executive = '',
//       dateRange = '',
//       adults = '',
//       children = '',
//       storedName = '',
//       storedEmail = '',
//       storedPhone = '',
//       startDate = '',
//       endDate = '';

//   var fullNameController, emailController, phoneController;
//   var reserve1 = Reservation(fullName: '');

//   Map data = {};

//   @override
//   initState() {
//     getStoredData();
//   }

//   void saveDataInObject() {
//     reserve1.adults = adults;
//     reserve1.children = children;
//     reserve1.fullName = fullNameController.text;
//     reserve1.email = emailController.text;
//     reserve1.phone = phoneController.text;
//     reserve1.noOfSingle = single;
//     reserve1.noOfDouble = double;
//     reserve1.noOfExecutive = executive;
//     var dateList = dateRange.split('-');
//     startDate = dateList[0].trim();
//     endDate = dateList[1].trim();
//     reserve1.startDate = startDate;
//     reserve1.endDate = endDate;
//   }

//   getStoredData() async {
//     SharedPreferences storedData = await SharedPreferences.getInstance();
//     setState(() {
//       storedName = storedData.getString('fullName') ?? '';
//       storedEmail = storedData.getString('email') ?? '';
//       storedPhone = storedData.getString('phone') ?? '';
//       fullNameController = TextEditingController()..text = storedName;
//       emailController = TextEditingController()..text = storedEmail;
//       phoneController = TextEditingController()..text = storedPhone;
//     });
//   }

//   void saveData() async {
//     SharedPreferences data = await SharedPreferences.getInstance();
//     setState(() {
//       data.setString('fullName', fullNameController.text);
//       data.setString('email', emailController.text);
//       data.setString('phone', phoneController.text);
//     });
//   }

//   void getData() {
//     single = data['noOfSingleRoom'] as String;
//     double = data['noOfDoubleRoom'] as String;
//     executive = data['noOfExecutiveRoom'] as String;
//     dateRange = data['dateRange'] as String;
//     adults = data['adults'] as String;
//     children = data['children'] as String;
//   }

//   @override
//   Widget build(BuildContext context) {
//     data = ModalRoute.of(context)!.settings.arguments as Map;
//     getData();
//     return Scaffold(
//       appBar: MainAppBar(
//         "Personal Details",
//       ),
//       endDrawer: MainDrawer(context),
//       body: SingleChildScrollView(
//         child: FormBuilder(
//           onChanged: saveData,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(13),
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         'Enter Your Personal Details',
//                         style: TextStyle(fontSize: 23),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       FormBuilderTextField(
//                         name: 'fullName',
//                         controller: fullNameController,
//                         decoration: InputDecoration(
//                           labelText: 'Full Name',
//                           // labelStyle: TextStyle(
//                           //   color: Colors.black,
//                           //   fontSize: 22,
//                           // )
//                         ),
//                       ),
//                       FormBuilderTextField(
//                         name: 'email',
//                         controller: emailController,
//                         decoration: InputDecoration(
//                           labelText: 'Email Address',
//                           // labelStyle: TextStyle(
//                           //   color: Colors.black,
//                           //   fontSize: 22,
//                           // )
//                         ),
//                       ),
//                       FormBuilderTextField(
//                         name: 'phone',
//                         controller: phoneController,
//                         decoration: InputDecoration(
//                           labelText: 'Phone Number',
//                           // labelStyle: TextStyle(
//                           //   color: Colors.black,
//                           //   fontSize: 22,
//                           // )
//                         ),
//                       ),
//                       // FormBuilderTextField(
//                       //   name: 'password',
//                       //   obscureText: true,
//                       //   enableSuggestions: false,
//                       //   autocorrect: false,
//                       //   decoration: InputDecoration(
//                       //     labelText: 'Password',
//                       //     // labelStyle: TextStyle(
//                       //     //   color: Colors.black,
//                       //     //   fontSize: 22,
//                       //     // )
//                       //   ),
//                       // ),
//                       // FormBuilderTextField(
//                       //   name: 'confirmPassword',
//                       //   obscureText: true,
//                       //   enableSuggestions: false,
//                       //   autocorrect: false,
//                       //   decoration: InputDecoration(
//                       //     labelText: 'Confirm Password',
//                       //     // labelStyle: TextStyle(
//                       //     //   color: Colors.black,
//                       //     //   fontSize: 22,
//                       //     // )
//                       //   ),
//                       // ),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       ElevatedButton(
//                         child: Text('Confirm'),
//                         // color: Colors.orangeAccent,
//                         onPressed: () {
//                           saveData();
//                           saveDataInObject();

//                           Navigator.pushNamed(context, '/confirm_details',
//                               arguments: {
//                                 'reservation': reserve1,
//                               });
//                         },
//                       ),
//                       ElevatedButton(
//                         // color: Colors.blueGrey,
//                         onPressed: () {
//                           saveData();
//                           saveDataInObject();
//                           Navigator.pop(context);
//                         },
//                         child: Text('Go back to Room Selection!'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
