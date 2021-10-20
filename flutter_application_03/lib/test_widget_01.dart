import 'package:flutter/material.dart';
import './global_settings.dart';

class TestWidget01 extends StatelessWidget {
  const TestWidget01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
        centerTitle: true,
        backgroundColor: globalBackgroundColor,
      ),
      body: Center(
        // child: Text(
        //   'hello ninjas!',
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.0,
        //     color: Colors.grey[600],
        //     fontFamily: 'IndieFlower',
        //   ),
        // ),

        // child: Image.asset('assets/photo-03.jpg'),
        // child: Image.network('https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=928&q=80'),

        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 100.0,
        // ),

        // child: ElevatedButton(
        //   onPressed: () => print('clicked elevated button'),
        //   child: Text('click me'),
        //   style: ElevatedButton.styleFrom(
        //     onPrimary: globalForegroundColor,
        //     primary: globalBackgroundColor,
        //   ),
        // ),

        child: ElevatedButton.icon(
          onPressed: () => print('clicked elevated button'),
          icon: const Icon(
              Icons.alternate_email,
              color: Colors.lightGreenAccent
          ),
          // icon: IconButton(
          //   onPressed: () => print('clicked IconButton'),
          //   icon: const Icon(Icons.mail),
          //   color: Colors.black,
          // ),
          label: const Text('click me'),
          style: ElevatedButton.styleFrom(
              onPrimary: Colors.black,
              primary: Colors.amber
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('click'),
        onPressed: () => print('clicked'),
        backgroundColor: globalBackgroundColor,
      ),
    );
  }
}
