import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/widget/home/list_tile_widget.dart';

class CardWidget extends StatelessWidget {
  final String text;

  const CardWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.pink.shade300,
      // color: Colors.deepPurple.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      child: ListTileWidget(text: text),
    );
  }
}