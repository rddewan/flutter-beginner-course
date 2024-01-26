
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'This is a text wiget. werewrewrrtytrutktyiytiyiuiurterqeqweqweqweqweqweqweqwewqeqweqweqweqwewqeqweqweqwe',
      softWrap: true,
      // maxLines: 2,
      // overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        color: Colors.deepPurple.shade400,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
        letterSpacing: 2,
        //fontFamily: ,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dotted,
        shadows: [
          Shadow(
            color: Colors.blue.shade700,
            offset: Offset(0, 5),
            blurRadius: 10,
          )
        ]
      ),
    );
  }

}