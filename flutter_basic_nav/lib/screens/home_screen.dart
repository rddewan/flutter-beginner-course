import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/route/main_route.dart';
import 'package:flutter_basic_nav/screens/detail_screen.dart';

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
              final Map<String, dynamic> arguments = {
                'name': 'John', 
                'age': 30, 
                'updateName': updateName,
              };
              
              Navigator.pushNamed(
                context, 
                detailRoute, 
                arguments: arguments,
              );
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //       builder: (context) =>
              //            DetailScreen(name: 'John', age: 30, updateName: updateName)),
              // );
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

          ElevatedButton(
            onPressed: () async {
              showDialog(
                context: context, 
                barrierDismissible: false,
                builder: (context) {
                  return PopScope(
                    canPop: false,
                    child: AlertDialog(
                      title: const Text('Alert'),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(' I am a alert dialog')
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          }, 
                          child: const Text('OK')
                        )
                      ],
                    ),
                  );
                  
                },
              );
            },
            child: const Text('Open a Dilaog'),
          ),
           
        ],
      ),
    );
  }
}
