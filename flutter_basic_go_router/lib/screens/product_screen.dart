import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/route/app_route_observer.dart';
import 'package:go_router/go_router.dart';


class ProductScreen extends StatefulWidget {
  
  const ProductScreen({
    super.key,    
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> with RouteAware {
  late RouteObserver _routeObserver;

  @override
  void initState() {   
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _routeObserver = appRouteObserver;
      _routeObserver.subscribe(this, ModalRoute.of(context)!);
     });
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    debugPrint('Build Product Screen');
    return Scaffold(  
      appBar: AppBar(
        title: const Text('Product'),
      ),    
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
            onPressed: () {
              final extra =  <String, dynamic>{
                  'name': 'John', 
                  'age': 30, 
                  'updateName': updateName,
                };
              
              context.push('/product/product_detail', extra: extra);

            }, 
            child: const Text('Push To Product Detail'),
          ),

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

  void updateName(String value) {
    print(value);
  }

  @override
  void didPopNext() {   
    super.didPopNext();
    debugPrint('Product: didPopNext');
  }
}