import 'package:flutter/material.dart';

class TabOne extends StatelessWidget {
  const TabOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const PageStorageKey("TabOne"),
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Tab 1 Item $index'),
        );
      },
    );
  }
}