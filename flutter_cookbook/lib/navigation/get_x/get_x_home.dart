import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_cookbook/routes.dart';

class GetXHomePage extends StatelessWidget {
  const GetXHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Navigation'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('Open (GetX) first route'),
              ),
              onPressed: () {
                Get.toNamed(navigationGetXFirstRoute);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('Open (GetX) second route'),
              ),
              onPressed: () {
                Get.toNamed(navigationGetXSecondRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GetXFirstRoute extends StatelessWidget {
  const GetXFirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('(GetX) First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Go back :)'),
        ),
      ),
    );
  }
}

class GetXSecondRoute extends StatelessWidget {
  const GetXSecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('(GetX) Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Go back :)'),
        ),
      ),
    );
  }
}
