import 'dart:math';

import 'package:dice_game/navigation_drawer.dart';
import 'package:flutter/material.dart';

class TwoDicePage extends StatefulWidget {
  const TwoDicePage({super.key});

  @override
  State<TwoDicePage> createState() => _TwoDicePageState();
}

class _TwoDicePageState extends State<TwoDicePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isRolling = false;
  late int leftDiceNumber = 1;
  late int rightDiceNumber = 1;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      //I added the Drawer so you can easily switch between the dice sets
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child: Image.asset('images/dice$leftDiceNumber.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child: Image.asset('images/dice$rightDiceNumber.png')),
                ),
              ),
            ],
          ),
          MaterialButton(
            color: Colors.black38,
            height: 64,
            minWidth: 256,
            onPressed: () {
              if (_isRolling) {
                _controller.reset();
              } else {
                _controller.repeat();
              }
              setState(
                () {
                  _isRolling = !_isRolling;
                  leftDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;
                },
              );
            },
            child: Text(
              _isRolling ? "Stop" : "Roll",
              style: const TextStyle(fontSize: 36, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
