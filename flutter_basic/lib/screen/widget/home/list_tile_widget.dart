

import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  final String text;
  const ListTileWidget({super.key, required this.text});
  
  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  bool selected = false;

  void _isSelected(String value) {
    if (value == widget.text) {      
      setState(() {
        selected = !selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(widget.text),
        subtitle: const Text('Subtitle '),
        leading: const Icon(Icons.favorite, color: Colors.red,),
        trailing: const Icon(Icons.chevron_right, color: Colors.pink,),
        selected: selected,
        selectedColor: Colors.blue,
        selectedTileColor: Colors.amber.shade100,
        contentPadding: const EdgeInsets.all(8.0),      
        onTap: () {
          debugPrint(widget.text);
          _isSelected(widget.text);
        }
      ),
    );
  }
}