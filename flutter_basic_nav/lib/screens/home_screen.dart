import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/screens/detail_screen.dart';
import 'package:flutter_basic_nav/screens/log_in_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String name = '';

  void updateName(String value) {
    setState(() {
      name = value;
    });

  }
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
                MaterialPageRoute(
                    builder: (context) =>
                         DetailScreen(name: 'John', age: 30, updateName: updateName)),
              );
            },
            child: const Text('Go To Detail'),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(name: 'John', age: 30, updateName: updateName)),
              );
              // final value = await result as String;
              // updateName(value);
            },
            child: const Text('Go To Detail'),
          ),

          Text(name),
           
        ],
      ),
    );
  }
}
