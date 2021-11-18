import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class MyLabel extends StatefulWidget {
  const MyLabel({Key? key}) : super(key: key);

  @override
  _MyLabelState createState() => _MyLabelState();
}

class _MyLabelState extends State<MyLabel> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            color: const Color.fromRGBO(199, 254, 0, 1.0),
            shadowColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                DateFormat('y-MM-dd').format(now) + ' (${_translateDow(now)})',
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _translateDow(DateTime now) {
    switch (now.weekday) {
      case DateTime.monday:
        return '월';
      case DateTime.tuesday:
        return '화';
      case DateTime.wednesday:
        return '수';
      case DateTime.thursday:
        return '목';
      case DateTime.friday:
        return '금';
      case DateTime.saturday:
        return '토';
      case DateTime.sunday:
        return '일';
      default:
        return '';
    }
  }
}
