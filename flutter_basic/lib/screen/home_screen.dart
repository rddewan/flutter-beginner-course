import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/widget/home/button_widget.dart';
import 'package:flutter_basic/screen/widget/home/column_widget.dart';
import 'package:flutter_basic/screen/widget/home/container_widget.dart';
import 'package:flutter_basic/screen/widget/home/image_widget.dart';
import 'package:flutter_basic/screen/widget/home/rich_text_widget.dart';
import 'package:flutter_basic/screen/widget/home/row_widget.dart';
import 'package:flutter_basic/screen/widget/home/text_field_widget.dart';
import 'package:flutter_basic/screen/widget/home/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
        backgroundColor: Colors.red.shade50,
        elevation: 0.5,
        toolbarHeight: 100,
        toolbarOpacity: 0.5,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50), 
          child: Text('bottom data'),
        ),
        bottomOpacity: 0.5,
        
      ),     
      //body: const ColumnWidget(),
      // body: const RowWidget(),
      // body: const TextWidget(),
      // body: const RichTextWidget(),
      // body: const TextFieldWidget(),
      // body: const ContinerWidget(),
      // body:  const ImageWidget(),
      body: const ButtonWidget(),
    );
  }
}