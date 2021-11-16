import 'package:flutter/material.dart';

import 'package:flutter_cookbook/routes.dart';

class StateManagementHome extends StatelessWidget {
  const StateManagementHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management Home Page"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, stateManagementInheritedWidget);
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('State Management using Inherited Widget'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, simpleInheritedWidgetExample);
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('Simple Inherited Widget Example'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, stateManagementGetX);
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('State Management using Get X'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, stateManagementProvider);
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('State Management using Provider'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
