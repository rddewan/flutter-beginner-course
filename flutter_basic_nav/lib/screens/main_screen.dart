import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/screens/detail_screen.dart';
import 'package:flutter_basic_nav/screens/top_tab/chat_tab.dart';
import 'package:flutter_basic_nav/screens/top_tab/group_tab.dart';


class MainScreen extends StatefulWidget {
  
  const MainScreen({
    super.key,    
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  List<Widget> _tabs = [
    ChatTab(),
    GroupTab(),
  ];

  @override
  void initState() {    
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {   
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Chat',
              icon: Icon(Icons.chat),
            ),
            Tab(
              text: 'Group',
              icon: Icon(Icons.group),
            ),
          ],
        ),
      ),      
      body: TabBarView(
        controller: _tabController,
        children: _tabs,
      )
    );
          
  }
}