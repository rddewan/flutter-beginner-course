import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        text: 'Hello',
        style: const TextStyle(color: Colors.deepOrange, fontSize: 18),
        children: [
          TextSpan(
            text: ' World',
            style: TextStyle(color: Colors.deepOrange.shade300, fontSize: 30),
          ),
          const TextSpan(
            text: '!',
            style: TextStyle(color: Colors.green, fontSize: 50),
          )
        ]

      ),
      
    );
  }
}