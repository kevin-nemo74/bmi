import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({required this.awesome, required this.textString});
  IconData awesome;
  String textString;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          awesome,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textString,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff8d8e98),
          ),
        )
      ],
    );
  }
}
