import 'package:flutter/material.dart';
import './global_settings.dart';

class TestWidget03 extends StatelessWidget {
  const TestWidget03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestWidget03'),
        centerTitle: true,
        backgroundColor: globalBackgroundColor,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('assets/photo-02.jpg')
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.cyan,
              child: const Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: const Text('2'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.amber,
              child: const Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('click'),
        onPressed: () => print('clicked'),
        backgroundColor: globalBackgroundColor,
      ),
    );
  }
}
