import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/route/app_route.dart';
import 'package:flutter_basic_nav/route/go_router_notifier.dart';


class SettingScreen extends StatefulWidget {
  
  const SettingScreen({
    super.key,    
  });

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  
  @override
  void initState() {    
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    debugPrint('Build Setting Screen');
    return Scaffold(    
      appBar: AppBar(
        title: const Text('Setting'),
      ),  
      body: Column(
        children: [
          const Text('Setting Screen'),
          ElevatedButton(
            onPressed: () {
              gorouterNotifier.isLoggedIn = false;

            }, 
            child: const Text('LogOut'),
          )
        ]
      ),
    );
          
  }
}