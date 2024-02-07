import 'package:flutter/material.dart';


class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<StatefulWidget> createState() => _CheckboxState();

}

class _CheckboxState extends State<CheckboxWidget> {
  bool? _isSelected = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox Widget')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Checkbox.adaptive(
              value: _isSelected,
              // checkColor: Colors.red,
              // activeColor: Colors.black38,
              isError: false,
              tristate: true,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              //   side: BorderSide(color: Colors.blue, width: 2)
              // ),
              // fillColor: MaterialStateProperty.resolveWith((states) {
              //   if (states.contains(MaterialState.disabled)) {
              //     return Colors.blue;
              //   }
              //   return null;
              // }),
              //onChanged: null,
              onChanged: (value) {
                setState(() {
                  _isSelected = value;
                });
              },
              
            ),
        
            CheckboxListTile.adaptive(
              value: _isSelected,
              title: const Text('Title'),
              subtitle: const Text('sub title'),
              // checkColor: Colors.red,
              // activeColor: Colors.black38,
              isError: false,
              tristate: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.blue, width: 2)
              ),
              fillColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.blue;
                }
                return null;
              }),
              //onChanged: null,
              onChanged: (value) {
                setState(() {
                  _isSelected = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}