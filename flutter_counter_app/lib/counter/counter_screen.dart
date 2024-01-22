import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
   return _CounterScreenState();
  }

}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Column(
        children:  <Widget>[
          Text('Counter: $_counter'),
          ElevatedButton(
            onPressed: () {
              _increment();
            }, 
            child: Text('Increment'),
          ),
          ElevatedButton(
            onPressed: () {
              _decrement();
            }, 
            child: Text('Decrement'),
          ),
          
        ]
      ),
    );
    
  }

}