import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/screens/detail_screen.dart';


class MainScreen extends StatelessWidget {
  
  const MainScreen({
    super.key,    
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Column(
        children: [
          const Text('Home Screen'),
          ElevatedButton(
            onPressed: () {
              //_goToDetail();
              // final Map<String, dynamic> arguments = {
              //   'name': 'John', 
              //   'age': 30, 
              //   'updateName': updateName,
              // };
              
              // Navigator.pushNamed(
              //   context, 
              //   detailRoute, 
              //   arguments: arguments,
              // );
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //       builder: (context) =>
              //            DetailScreen(name: 'John', age: 30, updateName: updateName)),
              // );
            },
            child: const Text('Go To Detail'),
          ),
          // ElevatedButton(
          //   onPressed: () async {
          //     final result = Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) =>
          //               DetailScreen(name: 'John', age: 30, updateName: updateName)),
          //     );
          //     // final value = await result as String;
          //     // updateName(value);
          //   },
          //   child: const Text('Go To Detail'),
          // ),


          ElevatedButton(
            onPressed: () async {
              showDialog(
                context: context, 
                barrierDismissible: false,
                builder: (context) {
                  return PopScope(
                    canPop: false,
                    child: AlertDialog(
                      title: const Text('Alert'),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(' I am a alert dialog')
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          }, 
                          child: const Text('OK')
                        )
                      ],
                    ),
                  );
                  
                },
              );
            },
            child: const Text('Open a Dilaog'),
          ),           
        ],
      ),
    );
          
  }

  // void _goToDetail() {

  //   final Map<String, dynamic> arguments = {
  //     'name': 'John', 
  //     'age': 30, 
  //     'updateName': updateName,
  //   };
    
  //   Navigator.pushNamed(
  //     context, 
  //     detailRoute, 
  //     arguments: arguments,
  //   );
  // }

  
}