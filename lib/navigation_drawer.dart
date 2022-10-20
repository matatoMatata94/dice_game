import 'package:flutter/material.dart';

import 'dicePages.dart';

//other animation

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
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

  Widget buildDicePageItems(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 100,
          ),
          ListTile(
              title: const SizedBox(
                height: 75,
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const OneDicePage(),
                    ),
                  )),
          const SizedBox(
            height: 30,
          ),
          ListTile(
              title: const SizedBox(
                height: 75,
                child: Image(
                  image: AssetImage('images/dice2.png'),
                ),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const TwoDicePage(),
                    ),
                  )),
          const SizedBox(
            height: 30,
          ),
          ListTile(
              title: const SizedBox(
                height: 75,
                child: Image(
                  image: AssetImage('images/dice3.png'),
                ),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ThreeDicePage(),
                    ),
                  )),
          const SizedBox(
            height: 30,
          ),
          ListTile(
              title: const SizedBox(
                height: 75,
                child: Image(
                  image: AssetImage('images/dice4.png'),
                ),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const FourDicePage(),
                    ),
                  )),
          const SizedBox(
            height: 30,
          ),
          ListTile(
              title: const SizedBox(
                height: 75,
                child: Image(
                  image: AssetImage('images/dice5.png'),
                ),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const FiveDicePage(),
                    ),
                  )),
          const SizedBox(
            height: 30,
          ),
          ListTile(
              title: const SizedBox(
                height: 75,
                child: Image(
                  image: AssetImage('images/dice6.png'),
                ),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const SixDicePage(),
                    ),
                  )),
        ],
      );
}
