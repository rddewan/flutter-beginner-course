import 'package:flutter/material.dart';


class OnboardingScreen extends StatelessWidget {
  
  const OnboardingScreen({
    super.key,    
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
        title: const Text('Onboarding'),
      ),
      body: Column(
        children: [
          const Text('Onboarding Screen'),
        ]
      ),
    );
          
  }

  
}