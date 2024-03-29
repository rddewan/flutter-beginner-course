import 'package:flutter/material.dart';

class ContinerWidget extends StatelessWidget {
  final String text;

  const ContinerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.teal.shade200,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.teal.shade100,
              spreadRadius: 5,
              blurRadius: 8,
              offset: const Offset(10, 10),
            )
          ]
        ),
        child:  Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child:  Center(child: Text(text)),
        ),
      ),
    );
  }

}