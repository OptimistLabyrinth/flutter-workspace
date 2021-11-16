import 'package:flutter/material.dart';

import 'package:flutter_cookbook/state_management/inherited_widget/layer_one/layer_two/layer_three/layer_three.dart';

class LayerTwo extends StatelessWidget {
  const LayerTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(30),
            child: LayerThree(),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              'layer two',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      color: Colors.lightBlue,
    );
  }
}
