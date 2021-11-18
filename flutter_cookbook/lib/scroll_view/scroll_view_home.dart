import 'package:flutter/material.dart';

import 'package:flutter_cookbook/routes.dart';

class ScrollViewHome extends StatefulWidget {
  const ScrollViewHome({Key? key}) : super(key: key);

  @override
  _ScrollViewHomeState createState() => _ScrollViewHomeState();
}

class _ScrollViewHomeState extends State<ScrollViewHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  Navigator.pushNamed(context, customScrollView01);
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: const [
                      Text(
                        'Custom Scroll View 01',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text('SliverAppBar, SliverFixedExtendedList'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
