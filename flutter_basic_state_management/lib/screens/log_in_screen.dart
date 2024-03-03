import 'package:flutter/material.dart';
import 'package:flutter_basic_state_management/route/main_route.dart';
import 'package:flutter_basic_state_management/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isLoading = false;

  void _updateLoading(bool isLoading) {
    setState(() {
      _isLoading = isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('LoginScreen build');
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Screen'),
            const SizedBox(height: 8,),
            if (_isLoading) ...[
              const CircularProgressIndicator.adaptive(),
            ],
            const SizedBox(height: 8,),
            ElevatedButton(
              onPressed: () {
                // Push a named route onto the navigator that most tightly encloses the given context.
                //Navigator.pushNamed(context, homeRoute);
                // Navigator.pushNamedAndRemoveUntil(
                //   context, 
                //   homeRoute, 
                //   // (route) => route.settings.name == rootRoute,
                //   (route) => false,
                // );
               _updateLoading(true);
              }, 
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}