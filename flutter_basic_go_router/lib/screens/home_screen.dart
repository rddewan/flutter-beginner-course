import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/screens/top_tab/chat_tab.dart';
import 'package:flutter_basic_nav/screens/top_tab/group_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Widget> _tabs = const [
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
    debugPrint('Build Home Screen');
    return Scaffold(
      appBar: AppBar(  
        title: const Text('Home'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: const Text(
                'Demo App',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {               
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.details),
              title: const Text('Detail'),
              onTap: () {
               
              },
            ),
            ListTile(
              leading: const Icon(Icons.track_changes_outlined),
              title: const Text('Tracking'),
              onTap: () {                
              },
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
