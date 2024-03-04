import 'package:flutter/material.dart';
import 'package:set_state_gemini/screen/chat_screen.dart';
import 'package:set_state_gemini/screen/image_to_text_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_) => const ChatScreen()),
                );

              }, 
              child: const Text('Chat'),
            ),

            const SizedBox(height: 16,),
          
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_) => const ImageToTextScreen()),
                );
              }, 
              child: const Text('Image To Text'),
            )
          ],
        )
      ),
    );
  }
}