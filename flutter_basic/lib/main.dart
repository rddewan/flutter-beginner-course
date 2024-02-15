import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/home_screen.dart';
import 'package:flutter_basic/screen/tabs/tab_screen.dart';
import 'package:flutter_basic/screen/widget/home/checkbox_widget.dart';
import 'package:flutter_basic/screen/widget/home/grid_view_widget.dart';
import 'package:flutter_basic/screen/widget/home/radio_widget.dart';
import 'package:flutter_basic/screen/widget/home/stack_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: HomeScreen()
      // home: GridViewWidget()
      // home: StackWidget()
      // home: CheckboxWidget(),
      // home: RadioWidget(),
      home: TabScreen(),
    );
  }
}
