import 'package:dice_game/startPage.dart';
import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartPage(),
    );
  }
}
