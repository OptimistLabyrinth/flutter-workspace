import 'package:flutter/material.dart';

import 'package:flutter_cookbook/state_management/inherited_widget/state_root.dart';

class LayerThree extends StatefulWidget {
  const LayerThree({Key? key}) : super(key: key);

  @override
  _LayerThreeState createState() => _LayerThreeState();
}

class _LayerThreeState extends State<LayerThree> {
  bool initiated = false;
  bool isHappy = false;

  @override
  Widget build(BuildContext context) {
    if (!initiated) {
      StateRoot.of(context).commonData.addListener(updateCommonData);
      setState(() {
        initiated = true;
      });
    }

    return Card(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'layer three',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.greenAccent,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              isHappy ? 'I\'m Happy' : 'Feeling gloomy',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      color: Colors.green,
    );
  }

  void updateCommonData() {
    setState(() {
      isHappy = StateRoot.of(context).commonData.isHappy;
    });
  }
}
