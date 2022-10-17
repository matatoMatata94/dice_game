import 'package:flutter/material.dart';

class OneDicePage extends StatelessWidget {
  const OneDicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(110.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.black38,
            height: 64,
            minWidth: 256,
            //The logo of a rolling dice would be better
            child: const Text(
              "Roll",
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TwoDicePage extends StatelessWidget {
  const TwoDicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.black38,
            height: 64,
            minWidth: 256,
            //The logo of a rolling dice would be better
            child: const Text(
              "Roll",
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class ThreeDicePage extends StatelessWidget {
  const ThreeDicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.black38,
              height: 64,
              minWidth: 256,
              //The logo of a rolling dice would be better
              child: const Text(
                "Roll",
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FourDicePage extends StatelessWidget {
  const FourDicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.black38,
            height: 64,
            minWidth: 256,
            //The logo of a rolling dice would be better
            child: const Text(
              "Roll",
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class FiveDicePage extends StatelessWidget {
  const FiveDicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(
                height: 220,
                width: 220,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.black38,
            height: 64,
            minWidth: 256,
            //The logo of a rolling dice would be better
            child: const Text(
              "Roll",
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class SixDicePage extends StatelessWidget {
  const SixDicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          MaterialButton(
            onPressed: () {},
            color: Colors.black38,
            height: 64,
            minWidth: 256,
            //The logo of a rolling dice would be better
            child: const Text(
              "Roll",
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}