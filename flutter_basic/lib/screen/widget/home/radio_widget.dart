

import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<StatefulWidget> createState() => _RadioStateWidget();
}

class _RadioStateWidget extends State<RadioWidget> {
  bool _isDisabled = true;

  String groupValue = 'gender';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: const Text('Radio Widget')),
    body: Column(
      children: [
        ListTile(
          title: const Text('Male'),
          leading: Radio.adaptive(
            value: 'male', 
            groupValue: groupValue, 
            activeColor: Colors.green,
            fillColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.pink;
              }
              return null;
            }),
            onChanged: _isDisabled ? null : (value) {
              setState(() {
                groupValue = value.toString();
              });
          
            },
          ),
        ),
        ListTile(
         title: const Text('Female'),
        leading: Radio.adaptive(
            value: 'female', 
            groupValue: groupValue, 
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
          
            },
          ),
        ),

        RadioListTile.adaptive(
          title: const Text('None'),
          subtitle: const Text('None subtitle'),
          value: 'none', 
          groupValue: groupValue, 
          activeColor: Colors.green,
          fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.pink;
            }
            return null;
          }),
          onChanged: _isDisabled ? null : (value) {
            setState(() {
              groupValue = value.toString();
            });
        
          },
        ),
      ],
    ),
   );
  }

}