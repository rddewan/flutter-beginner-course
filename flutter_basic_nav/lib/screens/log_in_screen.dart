import 'package:flutter/material.dart';
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
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            }, 
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}