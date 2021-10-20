import 'package:flutter/material.dart';
import './test_widget_01.dart';
import './test_widget_02.dart';
import './test_widget_03.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

final globalForegroundColor = Colors.white;
final globalBackgroundColor = Colors.blue[600];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestWidget03(key: key);
  }
}
