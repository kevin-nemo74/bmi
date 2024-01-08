import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ContainerCard.dart';
import 'ContentCard.dart';

const activeColor = Color(0xff1d1e33);
const inactiveColor = Color(0xff111328);
const bottomContainerColor = Color(0xffEB1555);
const containerHeight = 80.0;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      } else {
        maleColor = inactiveColor;
      }
    }
    if (selectedGender == Gender.female) {
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
                        updateColor(Gender.male);
                      });
                    },
                    child: containerCard(
                      colour1: maleColor,
                      cardChild: ContentCard(
                        textString: "MALE",
                        awesom: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: containerCard(
                      colour1: femaleColor,
                      cardChild: ContentCard(
                        textString: "FEMALE",
                        awesom: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: containerCard(
              colour1: activeColor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: containerCard(
                    colour1: activeColor,
                    cardChild: Container(),
                  ),
                ),
                Expanded(
                  child: containerCard(
                    colour1: activeColor,
                    cardChild: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: containerHeight,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
