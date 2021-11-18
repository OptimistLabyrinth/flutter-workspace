import 'package:flutter/material.dart';

class MySliverFixedExtentList extends StatefulWidget {
  const MySliverFixedExtentList({Key? key}) : super(key: key);

  @override
  _MySliverFixedExtentListState createState() =>
      _MySliverFixedExtentListState();
}

class _MySliverFixedExtentListState extends State<MySliverFixedExtentList> {
  final List<Color> _nestedListBaseColor = [
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.lightGreenAccent,
    Colors.green,
    Colors.cyan,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  int _outerListIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 50,
      delegate: SliverChildBuilderDelegate(
        (context, int index) {
          _outerListIndex = index;
          final useIndex = index % 10 == 0 ? 1 : index % 10;
          return Card(
            color: Colors.green[100 * useIndex],
            // child: Center(
            //   child: Text('${index + 1}'),
            // ),
            child: CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: [
                SliverFixedExtentList(
                  itemExtent: 50,
                  delegate: SliverChildBuilderDelegate(
                    (context, int index) {
                      final Color? color =
                          _getNestListItemColor(_outerListIndex, index);
                      return Card(
                        color: color,
                        child: Text('${index + 1}'),
                      );
                    },
                    childCount: 9,
                  ),
                ),
              ],
            ),
          );
        },
        childCount: 10,
      ),
    );
  }

  Color? _getNestListItemColor(int outerListIndex, int index) {
    late final Color? color;
    switch (outerListIndex) {
      case 0:
        color = Colors.pink[100 * index];
        break;
      case 1:
        color = Colors.red[100 * index];
        break;
      case 2:
        color = Colors.orange[100 * index];
        break;
      case 3:
        color = Colors.yellow[100 * index];
        break;
      case 4:
        color = Colors.lightGreen[100 * index];
        break;
      case 5:
        color = Colors.green[100 * index];
        break;
      case 6:
        color = Colors.cyan[100 * index];
        break;
      case 7:
        color = Colors.blue[100 * index];
        break;
      case 8:
        color = Colors.indigo[100 * index];
        break;
      case 9:
        color = Colors.purple[100 * index];
        break;
    }
    return color;
  }
}
