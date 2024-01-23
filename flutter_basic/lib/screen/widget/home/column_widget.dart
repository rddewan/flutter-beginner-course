import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black45,
      child: Column(
        // mainAxisAlignment: arrange children in a vertical direction,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment : arrange children in a horizontal direction
        crossAxisAlignment: CrossAxisAlignment.center,
        // Minimize the amount of free space along the main axis, subject to the incoming layout constraints.
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.up,
        textDirection: TextDirection.rtl,
        textBaseline: TextBaseline.ideographic,
        children: [
          Container(
            color: Colors.teal,
            width: MediaQuery.of(context).size.width,
            child: const Text('Column'),
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