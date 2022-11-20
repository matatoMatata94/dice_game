import 'dart:math';

import 'package:dice_game/navigation_drawer.dart';
import 'package:flutter/material.dart';

class ThreeDicePage extends StatefulWidget {
  const ThreeDicePage({super.key});

  @override
  State<ThreeDicePage> createState() => _ThreeDicePageState();
}

class _ThreeDicePageState extends State<ThreeDicePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isRolling = false;
  late int topDiceNumber = 1;
  late int middleDiceNumber = 1;
  late int bottomDiceNumber = 1;

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: RotationTransition(
                    turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                    child: Image.asset('images/dice$topDiceNumber.png')),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: RotationTransition(
                    turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                    child: Image.asset('images/dice$middleDiceNumber.png')),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: RotationTransition(
                    turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                    child: Image.asset('images/dice$bottomDiceNumber.png')),
              ),
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
                    topDiceNumber = Random().nextInt(6) + 1;
                    middleDiceNumber = Random().nextInt(6) + 1;
                    bottomDiceNumber = Random().nextInt(6) + 1;
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
      ),
    );
  }
}
