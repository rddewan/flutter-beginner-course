import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ShopScreen extends StatelessWidget {
  
  const ShopScreen({
    super.key,    
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('Build Shop Screen');
    return Scaffold(     
      appBar: AppBar(
        title: const Text('Shop'),
      ), 
      body: Column(
        children: [
          const Text('Shop Screen'),
          ElevatedButton(
            onPressed: () {
            //  context.pushNamed(trackingRouteName);
             context.push('/shop/tracking/1234');
            }, 
            child: const Text('Push To Tracking'),
          ),
        ]
      ),
    );
          
  }

  
}