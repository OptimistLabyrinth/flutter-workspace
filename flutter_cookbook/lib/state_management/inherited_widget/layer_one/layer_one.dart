import 'package:flutter/material.dart';

import 'package:flutter_cookbook/state_management/inherited_widget/layer_one/layer_two/layer_two.dart';

class LayerOne extends StatelessWidget {
  const LayerOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(40),
            child: LayerTwo(),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Text('layer one'),
          ),
        ],
      ),
      color: Colors.yellow,
    );
  }
}
