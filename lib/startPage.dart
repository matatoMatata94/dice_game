import 'package:flutter/material.dart';

import 'dicePages.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          const Text(
            "Dicee",
            style: TextStyle(
              color: Colors.white,
              fontSize: 90,
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OneDicePage()));
            },
            color: Colors.redAccent,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "1 Dice",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TwoDicePage()));
            },
            color: Colors.redAccent,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "2 Dice",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
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
            color: Colors.redAccent,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "3 Dice",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
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
            color: Colors.redAccent,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "4 Dice",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
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
            color: Colors.redAccent,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "5 Dice",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SixDicePage()));
            },
            color: Colors.redAccent,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "6 Dice",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
