
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              debugPrint('Elevated Button');
            },
            onLongPress: () {
              debugPrint('Elevated Button Long Press');
            },
            child: const Text('Elevated Button'),
          ),

          ElevatedButton.icon(
            onPressed: () {
              debugPrint('Elevated Button');
            },
            onLongPress: () {
              debugPrint('Elevated Button Long Press');
            },
            icon: const Icon(Icons.add),
            label: const Text('Elevated Button'),
          ),

          ElevatedButton(
            onPressed: () {
              debugPrint('Elevated Button');
            },
            onLongPress: () {
              debugPrint('Elevated Button Long Press');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              fixedSize: Size(200, 60),
              elevation: 8,
              shadowColor: Colors.deepPurple
            ),
            child: const Text('Elevated Button'),
          ),

          OutlinedButton(
            onPressed: () {
              debugPrint('OutlinedButton');
            },
            onLongPress: () {
              debugPrint('OutlinedButton Long Press');
            },
            child: const Text('Outlined Button'),
          ),
          OutlinedButton.icon(
            onPressed: () {
              debugPrint('OutlinedButton');
            },
            onLongPress: () {
              debugPrint('OutlinedButton Long Press');
            },
            icon: const Icon(Icons.add),
            label: const Text('OutlinedButton')
          ),
          TextButton(
            onPressed: () {
              debugPrint('OutlinedButton');
            },
            onLongPress: () {
              debugPrint('OutlinedButton Long Press');
            },
            child: const Text('Text Button'),
          ),
          TextButton.icon(
            onPressed: () {
              debugPrint('OutlinedButton');
            },
            onLongPress: () {
              debugPrint('OutlinedButton Long Press');
            },
            icon: const Icon(Icons.add),
            label: const Text('TextButton')
          ),
          FilledButton(
            onPressed: () {
              debugPrint('OutlinedButton');
            },
            onLongPress: () {
              debugPrint('OutlinedButton Long Press');
            },
            child: const Text('Filled Button'),
          ),
          FilledButton.icon(
            onPressed: () {
              debugPrint('OutlinedButton');
            },
            onLongPress: () {
              debugPrint('OutlinedButton Long Press');
            },
             icon: const Icon(Icons.add),
            label: const Text('Filled Button'),
          ),
          FilledButton.tonal(
            onPressed: () {
              debugPrint('OutlinedButton');
            },
            onLongPress: () {
              debugPrint('OutlinedButton Long Press');
            },
            child: const Text('Filled Button'),
          ),
          FloatingActionButton(
            onPressed: () {
              debugPrint('FloatingActionButton');
            },
            tooltip: '',
            child: const Text('Add'),
            elevation: 8,
            
          ),
          // FloatingActionButton.large(
          //   onPressed: () {
          //     debugPrint('FloatingActionButton');
          //   },
          //   tooltip: '',
          //   child: const Text('Add'),
          //   elevation: 8,            
          // ),
          FloatingActionButton.extended(
            onPressed: () {
              debugPrint('FloatingActionButton');
            },
            tooltip: '',
            icon: const Icon(Icons.add),
            label: const Text('Add'),
            elevation: 8,
            
          )

        ],
      ),
    );
  }

}