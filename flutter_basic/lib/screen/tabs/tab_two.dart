import 'package:flutter/material.dart';

class TabTwo extends StatelessWidget {
  const TabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const PageStorageKey("TabTwo"),
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Tab 2 Item $index'),
        );
      },
    );
  }
}