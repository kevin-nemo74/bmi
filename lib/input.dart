import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cardContent.dart';
import 'containerCard.dart';

const activeColor = Color(0xFF1D1F33);
const inactiveColor = Color(0xff111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      } else {
        maleColor = inactiveColor;
      }
    } else {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
        maleColor = inactiveColor;
      } else {
        femaleColor = inactiveColor;
      }
    }
  }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: containerCard(
                        colour1: maleColor,
                        cardWidget: CardContent(
                          awesome: FontAwesomeIcons.mars,
                          textString: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: containerCard(
                        colour1: femaleColor,
                        cardWidget: CardContent(
                          awesome: FontAwesomeIcons.venus,
                          textString: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: containerCard(
                colour1: Color(0xFF1D1F33),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: containerCard(
                      colour1: Color(0xFF1D1F33),
                    ),
                  ),
                  Expanded(
                    child: containerCard(
                      colour1: Color(0xFF1D1F33),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffeb1555),
              margin: EdgeInsets.only(top: 10),
              height: 80,
              width: double.infinity,
            )
          ],
        ));
  }
}
