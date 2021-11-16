import 'package:flutter/material.dart';

import 'package:flutter_cookbook/routes.dart';

class FlutterNativeHomePage extends StatelessWidget {
  const FlutterNativeHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLutter Native Navigation'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              child: const Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text('Open first route'),
              ),
              onPressed: () {
                Navigator.pushNamed(context, navigationFlutterNativeFirstRoute);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('Open second route'),
              ),
              onPressed: () {
                Navigator.pushNamed(
                    context, navigationFlutterNativeSecondRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FlutterNativeFirstRoute extends StatelessWidget {
  const FlutterNativeFirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back...'),
        ),
      ),
    );
  }
}

class FlutterNativeSecondRoute extends StatelessWidget {
  const FlutterNativeSecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
