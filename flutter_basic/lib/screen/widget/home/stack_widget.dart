import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Widget')),
      backgroundColor: Colors.green.shade300,
      body: const Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
        
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.blue,
              // backgroundImage: const NetworkImage('https://picsum.photos/id/237/200/300'),
              backgroundImage:  AssetImage(
                'assets/images/stone.jpeg',
              ),
            ),

            Positioned(
              bottom: 10.0,
              child: Text(
                'Richard Dewan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),

            Positioned(
              bottom: 30.0,
              right: 0.0,
              child: Icon(
                Icons.camera_alt_outlined, 
                color: Colors.white,
                size: 48,),
            ),

            Positioned(
              top: 10.0,
              left: 10.0,
              child: Icon(
                Icons.star, 
                color: Colors.yellow,
                size: 48,),
            ),

            Positioned(
              top: -20.0,
              left: 50.0,
              child: Icon(
                Icons.star, 
                color: Colors.yellow,
                size: 48,),
            ),
           
        
          ],
        ),
      ),
    );
  }

}