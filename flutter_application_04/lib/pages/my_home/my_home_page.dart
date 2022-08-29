import 'package:flutter/material.dart';
import 'package:flutter_application_04/routes/names.dart';
import 'package:flutter_application_04/routes/names_key.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _onPressButton(BuildContext context, String route) {
    Navigator.of(context).pushNamed(routeNames[route]!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            MyHomeNavigateButton(
              onPressButton: _onPressButton,
              onPressArgument: namesKeyLogin,
              text: '로그인 폼',
            ),
            MyHomeNavigateButton(
              onPressButton: _onPressButton,
              onPressArgument: namesKeyFileUpload,
              text: '파일 업로드 뷰',
            ),
            MyHomeNavigateButton(
              onPressButton: _onPressButton,
              onPressArgument: namesKeyVideoStream,
              text: '동영상 스트리밍',
            ),
          ],
        ),
      ),
    );
  }
}

typedef OnPressButtonType = void Function(BuildContext context, String route);

class MyHomeNavigateButton extends StatelessWidget {
  final OnPressButtonType onPressButton;
  final String onPressArgument;
  final String text;

  const MyHomeNavigateButton({
    Key? key,
    required this.onPressButton,
    required this.onPressArgument,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: 1000,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          // padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
          child: ElevatedButton(
            onPressed: () => onPressButton(context, onPressArgument),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 20.0,
              ),
              child: Text(
                text,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
