import 'dart:math';

import 'package:flutter/material.dart';

class StateRoot extends InheritedWidget {
  final CommonData commonData;

  const StateRoot({Key? key, required this.commonData, required Widget child}) : super(key: key, child: child);

  static StateRoot of(BuildContext context) {
    final StateRoot? result =
        context.dependOnInheritedWidgetOfExactType<StateRoot>();
    assert(result != null, 'No StateRoot found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(StateRoot old) {
    return true;
  }
}

class CommonData extends ChangeNotifier {
  bool isHappy = false;

  CommonData({required this.isHappy});
}

class User {
  final key = GlobalKey();
  final String id = (Random().nextDouble() * 10000000000).ceil().toString();
  String firstName;
  String lastName;
  String nickname;
  String email;

  User(
      {required this.firstName,
      required this.lastName,
      required this.nickname,
      required this.email});
}
