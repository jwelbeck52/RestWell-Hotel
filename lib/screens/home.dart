import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          "RestWell Hotel",
        ),
        endDrawer: MainDrawer(context),
        body: SingleChildScrollView(
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
                            'Make A Reservation',
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FormBuilderDateRangePicker(
                          name: 'date_range',
                          firstDate: DateTime(1970),
                          lastDate: DateTime(2030),
                          decoration: InputDecoration(
                            labelText: 'Select Date Range',
                            helperText: 'Select Your Start and End Dates',
                            // hintText: 'Hint text',
                          ),
                        ),
                        FormBuilderTextField(
                          name: 'noOfAdults',
                          decoration: InputDecoration(
                            labelText: 'Number of Adults',
                            helperText: 'Enter the number of adults',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        FormBuilderTextField(
                          name: 'noOfChildren',
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
                            Navigator.pushNamed(context, '/room_selection');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
