import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/route/app_route.dart';
import 'package:flutter_basic_nav/route/app_route_name.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Screen'),
            ElevatedButton(
              onPressed: () {
                //GoRouter.of(context).push('/home');
                // context.push('/home');
                // GoRouter.of(context).go('/home');
                //context.go('/home');
                // context.goNamed(homeRouteName);
                context.goNamed(homeRouteName);
                gorouterNotifier.isLoggedIn = true;
                
              }, 
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}