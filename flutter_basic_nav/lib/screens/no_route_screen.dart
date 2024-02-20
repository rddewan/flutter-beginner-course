import 'package:flutter/material.dart';

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Route'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('No Route Found. Please check your route'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);              
            }, 
            child: const Text('Go Home'),
          ),
        ],
      ),
    );
  }
}