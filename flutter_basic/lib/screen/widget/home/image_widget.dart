import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Column(
      children: [

        ClipOval(
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            // color: Colors.deepPurple,
            // colorBlendMode: BlendMode.colorDodge,
          ),
        ),

        Image.asset(
          'assets/images/stone.jpeg',
          height: 200,
          width: 200,
        ),
        
      ],
     ),
   );
  }

}