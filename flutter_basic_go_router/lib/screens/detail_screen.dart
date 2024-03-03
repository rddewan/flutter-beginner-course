import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/route/app_route_observer.dart';



class DetailScreen extends StatefulWidget {
  final String name;
  final int age;
  final Function(String) updateName;

  const DetailScreen({
    super.key, 
    required this.name, 
    required this.age,
    required this.updateName
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>  with RouteAware{
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          const Text('Detail Screen'),
          Text('Name: ${widget.name} - Age: ${widget.age}'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, widget.updateName("Hello World Back Again!"));
              // Navigator.pop(context, 'Hello');
              //Navigator.of(context).pop();

            }, 
            child: const Text('GoBack'),
          ),

          ElevatedButton(
            onPressed: () {
             
              // Navigator.pushNamed(
              //   context, 
              //   trackingRoute, 
              // );
              // Navigator.push(
              //   context, 
              //   MaterialPageRoute(
              //     builder: (context) => const TrackingScreen(name: 'John'),
              //   ),
              //  ); //Navigator.pushReplacement(context, route)

            }, 
            child: const Text('Go To Tracking Page'),
          )
        ],
      ),
    );
  }

  @override
  void didPop() {    
    super.didPop();
    debugPrint('Product Detail: didPop');
  }
}