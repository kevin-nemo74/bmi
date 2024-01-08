import 'package:flutter/material.dart';

class containerCard extends StatelessWidget {
  containerCard({required this.colour1, required this.cardChild});
  final Color colour1;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour1,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
