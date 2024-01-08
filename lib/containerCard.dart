import 'package:flutter/material.dart';

class containerCard extends StatelessWidget {
  containerCard({required this.colour1, Widget? cardWidget})
      : this.cardWidget = cardWidget ?? Container();
  final Color colour1;
  Widget cardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: cardWidget,
      decoration: BoxDecoration(
        color: colour1,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
