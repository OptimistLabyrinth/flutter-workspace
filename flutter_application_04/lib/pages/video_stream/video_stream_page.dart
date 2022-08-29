import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VideoStreamPage extends StatelessWidget {
  final String title;

  const VideoStreamPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(2),
              child: Text('동영상 스트리밍'),
            ),
          ],
        ),
      ),
    );
  }
}
