import 'package:flutter/material.dart';
import 'package:flutter_basic_state_management/route/main_route.dart';
import 'package:flutter_basic_state_management/screens/detail_screen.dart';
import 'package:flutter_basic_state_management/screens/main_screen.dart';
import 'package:flutter_basic_state_management/screens/product_screen.dart';
import 'package:flutter_basic_state_management/screens/setting_screen.dart';
import 'package:flutter_basic_state_management/screens/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String name = '';

  List<Widget> _tabs = [
    const MainScreen(),
    const ProductScreen(),
    const ShopScreen(),
    const SettingScreen(),
  ];

  void _setSelectedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void updateName(String value) {
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                'Demo App',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, homeRoute);
                
              },
            ),
            ListTile(
              leading: Icon(Icons.details),
              title: Text('Detail'),
              onTap: () {
                _goToDetail();
              },
            ),
            ListTile(
              leading: Icon(Icons.track_changes_outlined),
              title: Text('Tracking'),
              onTap: () {
                 Navigator.pushNamed(
                  context, 
                  trackingRoute, 
                  arguments: 'Richard Dewan'
                );
              },
            ),

          ],
        ),
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _setSelectedItem,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.green[200],
        unselectedItemColor: Colors.black45,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),

        ],
      ),
    );
  }

  void _goToDetail() {

    final Map<String, dynamic> arguments = {
      'name': 'John', 
      'age': 30, 
      'updateName': updateName,
    };
    
    Navigator.pushNamed(
      context, 
      detailRoute, 
      arguments: arguments,
    );
  }

  
}
