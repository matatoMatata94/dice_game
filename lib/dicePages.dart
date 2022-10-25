import 'dart:math';

import 'package:dice_game/navigation_drawer.dart';
import 'package:flutter/material.dart';

class OneDicePage extends StatefulWidget {
  const OneDicePage({super.key});

  @override
  State<OneDicePage> createState() => _OneDicePageState();
}

class _OneDicePageState extends State<OneDicePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isRolling = false;
  late int diceNumber = 1;

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
                  padding: const EdgeInsets.all(110.0),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child: Image.asset('images/dice$diceNumber.png')),
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
                  diceNumber = Random().nextInt(6) + 1;
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

class FourDicePage extends StatefulWidget {
  const FourDicePage({super.key});

  @override
  State<FourDicePage> createState() => _FourDicePageState();
}

class _FourDicePageState extends State<FourDicePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isRolling = false;
  late int topLeftDiceNumber = 1;
  late int topRightDiceNumber = 2;
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

class FiveDicePage extends StatefulWidget {
  const FiveDicePage({super.key});

  @override
  State<FiveDicePage> createState() => _FiveDicePageState();
}

class _FiveDicePageState extends State<FiveDicePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isRolling = false;
  late int topLeftDiceNumber = 1;
  late int topRightDiceNumber = 2;
  late int middleDiceNumber = 3;
  late int bottomLeftDiceNumber = 4;
  late int bottomRightDiceNumber = 5;

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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(65.0),
              child: RotationTransition(
                  turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                  child: Image.asset('images/dice$middleDiceNumber.png')),
            ),
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
                  middleDiceNumber = Random().nextInt(6) + 1;
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
