

import 'package:flutter/material.dart';

class TrackingScreen extends StatefulWidget {
  final String name;
  const TrackingScreen({super.key, required this.name});

  @override
  State<StatefulWidget> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracking'),
      ),
      body: Column(
        children: [
          const Text('Tracking Screen'),
          Text('Name: ${widget.name}'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            }, 
            child: const Text('GoBack'),
          ),

          ElevatedButton(
            onPressed: () {
              //Navigator.popUntil(context, ModalRoute.withName('/'));
              Navigator.popUntil(context, (route) => route.isFirst);
            }, 
            child: const Text('Go To Home'),
          ),
        ],
      ),
    );
  }
}