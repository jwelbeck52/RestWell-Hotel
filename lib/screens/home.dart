import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String fullName = "";
  DateTime selectedStartDate = DateTime.now();
  final _formKey = GlobalKey<FormBuilderState>();
  final childerncontrollter = TextEditingController();
  final adultcontroller = TextEditingController();
  final datecontroller = TextEditingController();

  @override
  void initState() {
    // getData();
  }

  getData() async {
    // SharedPreferences data = await SharedPreferences.getInstance();
    // setState(() {
    //   fullName = data.getString('fullname') ?? '';
    // });
  }

  // getval(){

  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        "RestWell Hotel",
      ),
      endDrawer: MainDrawer(context),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: _formKey,
          onChanged: getData,
          initialValue: {
            'stayDateRange':
                DateTimeRange(start: selectedStartDate, end: DateTime(2025)),
            'noOfAdults': '0',
            'noOfChildren': '0',
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(13),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            'Welcome,' + fullName + ' Make A Reservation',
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FormBuilderDateRangePicker(
                          name: 'stayDateRange',
                          controller: datecontroller,
                          firstDate: selectedStartDate,
                          lastDate: DateTime(2025),
                          // onChanged: getval(),
                          decoration: InputDecoration(
                            labelText: 'Select Date Range',
                            helperText: 'Select Your Start and End Dates',
                            // hintText: 'Hint text',
                          ),
                        ),
                        FormBuilderTextField(
                          name: 'noOfAdults',
                          controller: adultcontroller,
                          decoration: InputDecoration(
                            labelText: 'Number of Adults',
                            helperText: 'Enter the number of adults',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        FormBuilderTextField(
                          name: 'noOfChildren',
                          controller: childerncontrollter,
                          decoration: InputDecoration(
                            labelText: 'Number of Children',
                            helperText: 'Enter the number of children',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          child: Text('Select Rooms'),
                          // color: Colors.orangeAccent,
                          onPressed: () {
                            Navigator.pushNamed(context, '/room_selection',
                                arguments: {
                                  "dateRange": datecontroller.text,
                                  "adults": adultcontroller.text,
                                  "children": childerncontrollter.text,
                                });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
