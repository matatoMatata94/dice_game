import 'package:flutter/material.dart';

import 'dicePages.dart';

//other animation

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildDicePageItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildDicePageItems(BuildContext context) => Wrap(
        runSpacing: 16,
        children: [
          ListTile(
              title: const Text('1 Würfel'),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => OneDicePage(),
                    ),
                  )),
          ListTile(
              title: const Text('2 Würfel'),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => TwoDicePage(),
                    ),
                  )),
          ListTile(
              title: const Text('3 Würfel'),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ThreeDicePage(),
                    ),
                  )),
          ListTile(
              title: const Text('4 Würfel'),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => FourDicePage(),
                    ),
                  )),
          ListTile(
              title: const Text('5 Würfel'),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => FiveDicePage(),
                    ),
                  )),
          ListTile(
              title: const Text('6 Würfel'),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => OneDicePage(),
                    ),
                  )),
        ],
      );
}
