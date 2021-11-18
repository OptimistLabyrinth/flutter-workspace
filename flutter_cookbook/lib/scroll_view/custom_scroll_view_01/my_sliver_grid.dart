import 'package:flutter/material.dart';

class MySliverGrid extends StatefulWidget {
  const MySliverGrid({Key? key}) : super(key: key);

  @override
  _MySliverGridState createState() => _MySliverGridState();
}

class _MySliverGridState extends State<MySliverGrid> {
  @override
  Widget build(BuildContext context) {
    const double aspectRatio = 16 / 9;
    const childCount = 30;

    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: aspectRatio,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, int index) {
          final useIndex = index % 10 == 0 ? 1 : index % 10;
          return Padding(
            padding: _gridCellPadding(childCount: childCount, index: index),
            child: Stack(
              children: [
                Center(
                  child: Card(
                    color: Colors.blue[100 * useIndex],
                    child: const SizedBox(
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    child: Text('Grid Item ${index + 1}'),
                  ),
                ),
              ],
            ),
          );
        },
        childCount: childCount,
      ),
    );
  }

  EdgeInsets _gridCellPadding({required childCount, required index}) {
    const double paddingValue = 10;
    if (index == 0) {
      return const EdgeInsets.fromLTRB(paddingValue, paddingValue, paddingValue / 2, paddingValue / 2);
    }
    if (index == 1) {
      return const EdgeInsets.fromLTRB(paddingValue / 2, paddingValue, paddingValue, paddingValue / 2);
    }
    if (index == childCount - 2) {
      return const EdgeInsets.fromLTRB(paddingValue, paddingValue / 2, paddingValue / 2, paddingValue);
    }
    if (index == childCount - 1) {
      return const EdgeInsets.fromLTRB(0, paddingValue / 2, paddingValue / 2, paddingValue);
    }
    if (index % 2 == 0) {
      return const EdgeInsets.fromLTRB(paddingValue, paddingValue / 2, paddingValue / 2, paddingValue / 2);
    }
    return const EdgeInsets.fromLTRB(paddingValue / 2, paddingValue / 2, paddingValue, paddingValue / 2);
  }
}
