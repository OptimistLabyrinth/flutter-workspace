import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_03/providers/counter.dart';
import 'package:flutter_application_03/test_widget_04.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Counter(),
        ),
      ],
      child: const Home(),
    ),
  );
}

final globalForegroundColor = Colors.white;
final globalBackgroundColor = Colors.blue[600];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestWidget04(key: key);
  }
}
