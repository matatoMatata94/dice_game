import 'package:flutter/material.dart';

import '1DicePage.dart';
import '2DicePage.dart';
import '3DicePage.dart';
import '4DicePage.dart';
import '5DicePage.dart';
import '6DicePage.dart';

const Color backgroundColor = Colors.red;
const double headerTextSize = 90;
const Color headerTextColor = Colors.white;
const Color buttonColor = Colors.redAccent;
const Color buttonTextColor = Colors.white;
const double buttonTextSize = 45;

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Dicee",
            style: TextStyle(
              color: headerTextColor,
              fontSize: headerTextSize,
            ),
          ),
          //With the next 6 buttons you can choose with how many dices you want to play
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OneDicePage()));
            },
            color: buttonColor,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "1 Dice",
              style: TextStyle(
                color: buttonTextColor,
                fontSize: buttonTextSize,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TwoDicePage()));
            },
            color: buttonColor,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "2 Dice",
              style: TextStyle(
                color: buttonTextColor,
                fontSize: buttonTextSize,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThreeDicePage()));
            },
            color: buttonColor,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "3 Dice",
              style: TextStyle(
                color: buttonTextColor,
                fontSize: buttonTextSize,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FourDicePage()));
            },
            color: buttonColor,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "4 Dice",
              style: TextStyle(
                color: buttonTextColor,
                fontSize: buttonTextSize,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FiveDicePage()));
            },
            color: buttonColor,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "5 Dice",
              style: TextStyle(
                color: buttonTextColor,
                fontSize: buttonTextSize,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SixDicePage()));
            },
            color: buttonColor,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "6 Dice",
              style: TextStyle(
                color: buttonTextColor,
                fontSize: buttonTextSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
