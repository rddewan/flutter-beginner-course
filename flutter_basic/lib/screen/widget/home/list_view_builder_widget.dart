

import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/widget/home/container_widget.dart';
import 'package:flutter_basic/screen/widget/home/list_tile_widget.dart';

class ListViewBuilderWidget extends StatefulWidget {
  const ListViewBuilderWidget({super.key});

  @override
  State<ListViewBuilderWidget> createState() => _ListViewBuilderWidgetState();

}

class _ListViewBuilderWidgetState extends State<ListViewBuilderWidget> {

  late ScrollController _scrollController;

  @override
  void initState() {    
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    print('pixels: ${_scrollController.position.pixels}');
    print('maxScrollExtent: ${_scrollController.position.maxScrollExtent}');
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      print('end of the list');
    }
    
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      controller: _scrollController,
      reverse: false,
      itemBuilder: (context, index) {
        return ListTileWidget(text: '${index + 1}');
      },
    );
  }
}