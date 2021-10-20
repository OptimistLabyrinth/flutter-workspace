import 'package:flutter/material.dart';
import './global_settings.dart';

class TestWidget02 extends StatelessWidget {
  const TestWidget02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestWidget02'),
        centerTitle: true,
        backgroundColor: globalBackgroundColor,
      ),
      // body: Container(
      //   padding: const EdgeInsets.fromLTRB(10, 20, 40, 80),
      //   margin: const EdgeInsets.all(30),
      //   color: Colors.grey[400],
      //   child: const Text('hello'),
      // ),

      // body: const Padding(
      //   padding: EdgeInsets.all(90),
      //   child: Text('hello'),
      // ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     const Text('hello, world'),
      //     TextButton(
      //       onPressed: () => print('clicked text button'),
      //       style: TextButton.styleFrom(
      //         primary: Colors.black,
      //         backgroundColor: Colors.amber,
      //       ),
      //       child: const Text('click me'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(30),
      //       color: Colors.cyan,
      //       child: const Text('inside container'),
      //     ),
      //   ],
      // ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.black87,
                child: const Text('hello 1'),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.black38,
                child: const Text('hello 1'),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.black12,
                child: const Text('hello 1'),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.cyan,
            child: const Text('one'),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.pinkAccent,
            child: const Text('two'),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            color: Colors.amber,
            child: const Text('three'),
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
