import 'package:flutter/material.dart';

import 'package:flutter_cookbook/routes.dart';

class NavigationHomePage extends StatelessWidget {
  const NavigationHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Home Page"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, navigationFlutterNativeHome);
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('Using Flutter Native API'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, navigationGetXHome);
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('Using Get X'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
