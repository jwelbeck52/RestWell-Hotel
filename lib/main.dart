import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Route Navigation',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.green,
    ),
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => HomeScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/room_selection': (context) => RoomSelectionScreen(),
      '/personal_details': (context) => PersonalDetailsScreen(),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Select Rooms'),
          // color: Colors.orangeAccent,
          onPressed: () {
            Navigator.pushNamed(context, '/room_selection');
          },
        ),
      ),
    );
  }
}

class RoomSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Room Selection"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: Text('Go to Personal Details'),
                // color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/personal_details');
                },
              ),
              ElevatedButton(
                // color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back home!'),
              ),
            ],
          ),
        ));
  }
}

class PersonalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Details"),
      ),
      body: Center(
        child: ElevatedButton(
          // color: Colors.blueGrey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back to Room Selection!'),
        ),
      ),
    );
  }
}
