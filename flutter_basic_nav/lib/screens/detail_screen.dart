import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/screens/tracking_screen.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final int age;

  const DetailScreen({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          const Text('Detail Screen'),
          Text('Name: $name - Age: $age'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              //Navigator.of(context).pop();

            }, 
            child: const Text('GoBack'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const TrackingScreen(name: 'John'),
                ),
               ); //Navigator.pushReplacement(context, route)

            }, 
            child: const Text('Go To Tracking Page'),
          )
        ],
      ),
    );
  }
}