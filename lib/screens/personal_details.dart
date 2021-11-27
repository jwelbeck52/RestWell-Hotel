import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonalDetailsScreen extends StatefulWidget {
  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          "Personal Details",
        ),
        endDrawer: MainDrawer(context),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Enter Your Personal Details',
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FormBuilderTextField(
                        name: 'fullName',
                        controller: fullNameController,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          // labelStyle: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 22,
                          // )
                        ),
                      ),
                      FormBuilderTextField(
                        name: 'email',
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          // labelStyle: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 22,
                          // )
                        ),
                      ),
                      FormBuilderTextField(
                        name: 'password',
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          // labelStyle: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 22,
                          // )
                        ),
                      ),
                      FormBuilderTextField(
                        name: 'confirmPassword',
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          // labelStyle: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 22,
                          // )
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        child: Text('Confirm'),
                        // color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, '/confirm_details');
                        },
                      ),
                      ElevatedButton(
                        // color: Colors.blueGrey,
                        onPressed: () {
                          saveData();
                          Navigator.pop(context);
                        },
                        child: Text('Go back to Room Selection!'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void saveData() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setString('fullName', fullNameController.text);
    data.setString('email', emailController.text);
  }
}
