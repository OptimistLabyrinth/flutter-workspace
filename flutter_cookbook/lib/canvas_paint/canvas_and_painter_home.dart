import 'package:flutter/material.dart';

import 'package:flutter_cookbook/routes.dart';

class CanvasAndPainterHome extends StatefulWidget {
  const CanvasAndPainterHome({Key? key}) : super(key: key);

  @override
  State<CanvasAndPainterHome> createState() => _CanvasAndPainterHomeState();
}

class _CanvasAndPainterHomeState extends State<CanvasAndPainterHome> {
  final buttonData = [
    {'text': 'Canvas', 'route': canvasHome},
    {'text': 'Painter', 'route': painterHome},
  ];
  final childCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Canvas and Painter'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: (() {
                    if (index == 0) {
                      return const EdgeInsets.fromLTRB(15, 30, 15, 15);
                    }
                    return const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    );
                  })(),
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, buttonData[index]['route']!);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(buttonData[index]['text']!),
                      ),
                    ),
                  ),
                );
              },
              childCount: childCount,
            ),
          ),
        ],
      ),
    );
  }
}
