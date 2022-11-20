import 'dart:math';

import 'package:dice_game/navigation_drawer.dart';
import 'package:flutter/material.dart';

class SixDicePage extends StatefulWidget {
  const SixDicePage({super.key});

  @override
  State<SixDicePage> createState() => _SixDicePageState();
}

class _SixDicePageState extends State<SixDicePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isRolling = false;
  late int topLeftDiceNumber = 1;
  late int topRightDiceNumber = 2;
  late int middleLeftDiceNumber = 2;
  late int middleRightDiceNumber = 2;
  late int bottomLeftDiceNumber = 3;
  late int bottomRightDiceNumber = 4;

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
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.red,
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      child: Image.asset('images/dice$topLeftDiceNumber.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child: Image.asset('images/dice$topRightDiceNumber.png')),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child:
                          Image.asset('images/dice$middleLeftDiceNumber.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child:
                          Image.asset('images/dice$middleLeftDiceNumber.png')),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child:
                          Image.asset('images/dice$bottomLeftDiceNumber.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child:
                          Image.asset('images/dice$bottomRightDiceNumber.png')),
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
                  topRightDiceNumber = Random().nextInt(6) + 1;
                  topLeftDiceNumber = Random().nextInt(6) + 1;
                  middleLeftDiceNumber = Random().nextInt(6) + 1;
                  middleLeftDiceNumber = Random().nextInt(6) + 1;
                  bottomRightDiceNumber = Random().nextInt(6) + 1;
                  bottomLeftDiceNumber = Random().nextInt(6) + 1;
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
