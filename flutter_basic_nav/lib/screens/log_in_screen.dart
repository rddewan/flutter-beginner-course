import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/route/main_route.dart';
import 'package:flutter_basic_nav/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          const Text('Login Screen'),
          ElevatedButton(
            onPressed: () {
              // Push a named route onto the navigator that most tightly encloses the given context.
              //Navigator.pushNamed(context, homeRoute);
              Navigator.pushNamedAndRemoveUntil(
                context, 
                homeRoute, 
                // (route) => route.settings.name == rootRoute,
                (route) => false,
              );
             
            }, 
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}