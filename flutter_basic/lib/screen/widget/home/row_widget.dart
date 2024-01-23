import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black45,
      child: Row(
         // mainAxisAlignment: arrange children in a horizontal direction,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment : arrange children in a vertical direction
        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisSize: MainAxisSize.max,
        verticalDirection: VerticalDirection.up,
        textDirection: TextDirection.ltr,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Container(
              color: Colors.teal,              
              child: const Text('Row'),
              height: 100,
            ),
            const Text('1'),
            const Text('2'),
            const Text('3'),
            const Text('4'),
            const Text('5'),
            const Text('6'),
            const Text('7'),
            const Text('8'),
            const Text('9'),
            const Text('10'),
        ],
      ),
    );
  }
}