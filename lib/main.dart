import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        drawer: const NavigationDrawer(),
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const SafeArea(child: DicePage()),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
