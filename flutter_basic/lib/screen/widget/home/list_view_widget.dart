import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/widget/home/container_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: const [
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
        ContinerWidget(),
      ],
    );
  }

}