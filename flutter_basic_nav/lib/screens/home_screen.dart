import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          const Text('Home Screen'),
          ElevatedButton(
            onPressed: () {         
            
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DetailScreen()),
              );
            }, 
            child: const Text('Go To Detail'),
          ),

            ElevatedButton(
            onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailScreen()),
            );
            }, 
            child: const Text('Go To Detail'),
          )
        ],
      ),
    );
  }
}