import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: containerCard(),
                  ),
                  Expanded(
                    child: containerCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: containerCard(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: containerCard(),
                  ),
                  Expanded(
                    child: containerCard(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class containerCard extends StatelessWidget {
  const containerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F33),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
