import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super (key: key)

  @override
  Widget build(BuildContext context) => Drawer(
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

  Widget buildHeader(BuildContext context) => Container();

  Widget buildDicePageItems(BuildContext context) => Column(
    children: const [
      ListTile(
        leading: Icon(Icons.one_k),
      )
    ],
  );
}