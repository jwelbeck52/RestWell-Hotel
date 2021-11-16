import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedStartDate = DateTime.now();
  DateTime selectedEndDate = DateTime.now();

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedStartDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedStartDate)
      setState(() {
        selectedStartDate = picked;
      });
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedEndDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedEndDate)
      setState(() {
        selectedEndDate = picked;
      });
  }

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
                        Text('Select your start date:',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 17)),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Text(
                            "${selectedStartDate.toLocal()}".split(' ')[0],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          ElevatedButton(
                            onPressed: () => _selectStartDate(context),
                            child: Text('Check-in date'),
                          ),
                        ]),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Select your end date:',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 17)),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Text("${selectedEndDate.toLocal()}".split(' ')[0]),
                          SizedBox(
                            width: 20.0,
                          ),
                          ElevatedButton(
                            onPressed: () => _selectEndDate(context),
                            child: Text('Check-out date'),
                          ),
                        ]),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Number of Adults:',
                            // labelStyle: TextStyle(
                            //   color: Colors.black,
                            //   fontSize: 22,
                            // )
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Number of Children:',
                            // labelStyle: TextStyle(
                            //   color: Colors.black,
                            //   fontSize: 22,
                            // )
                          ),
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
