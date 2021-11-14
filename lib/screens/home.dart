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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Select your start date', textAlign: TextAlign.left),
          Row(children: [
            Text("${selectedStartDate.toLocal()}".split(' ')[0]),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => _selectStartDate(context),
              child: Text('Select Check-in date'),
            ),
          ]),
          Text('Select your start date', textAlign: TextAlign.left),
          Row(children: [
            Text("${selectedEndDate.toLocal()}".split(' ')[0]),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => _selectEndDate(context),
              child: Text('Select Check-out date'),
            ),
          ]),
          ElevatedButton(
            child: Text('Select Rooms'),
            // color: Colors.orangeAccent,
            onPressed: () {
              Navigator.pushNamed(context, '/room_selection');
            },
          ),
        ],
      ),
    );
  }
}
