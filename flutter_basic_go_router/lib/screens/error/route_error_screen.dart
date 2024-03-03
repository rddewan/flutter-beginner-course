import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Error'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Route Error'),
            FilledButton.icon(
              onPressed: () {
                context.go('/login');
              }, 
              icon: const Icon(Icons.error), 
              label: const Text('GoBack'))
          ],
        ),
      ),
    );
  }

}
