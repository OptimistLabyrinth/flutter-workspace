import 'package:flutter/material.dart';

import 'package:flutter_cookbook/state_management/inherited_widget/layer_one/layer_one.dart';
import 'package:flutter_cookbook/state_management/inherited_widget/state_root.dart';

class InheritedWidgetHome extends StatefulWidget {
  const InheritedWidgetHome({Key? key}) : super(key: key);

  @override
  _InheritedWidgetHomeState createState() => _InheritedWidgetHomeState();
}

class _InheritedWidgetHomeState extends State<InheritedWidgetHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Using Inherited Widget"),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(50),
            child: LayerOne(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            child: ElevatedButton(
              onPressed: () {
                final isHappy = StateRoot.of(context).commonData.isHappy;
                StateRoot.of(context).commonData.isHappy = !isHappy;
                StateRoot.of(context).commonData.notifyListeners();
              },
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text('change happiness state'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
