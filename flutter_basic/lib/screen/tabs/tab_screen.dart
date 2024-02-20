
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic/screen/tabs/tab_one.dart';
import 'package:flutter_basic/screen/tabs/tab_two.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController; 
  int badge = 1;

  @override
  void initState() {    
    super.initState();
    _tabController = TabController(length: 2, vsync: this);    
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Widget> _tabs = [
    const TabOne(),
    const TabTwo(),
  ];

  void updateBadge() {
    setState(() {
      badge += 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, 
      child: Scaffold(
      appBar: AppBar(
        title: const Text('Tab Screen'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            const Tab(
              text: 'Tab One',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'Shopping',
              icon: Badge(
                label: Text(badge.toString()),
                alignment: Alignment.topCenter,
                backgroundColor: Colors.amber,
                isLabelVisible: true,
                child: IconButton(
                  onPressed: () {
                    updateBadge();
                  },
                  icon: const Icon(Icons.shopping_cart)
                  ),
              )
            ),

          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabs,
      )
    ));
    
    
  }
}