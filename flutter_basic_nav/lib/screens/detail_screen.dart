import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          const Text('Detail Screen'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              //Navigator.of(context).pop();
  
            }, 
            child: const Text('GoBack'))
        ],
      ),
    );
  }
}