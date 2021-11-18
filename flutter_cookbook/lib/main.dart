import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_cookbook/canvas_paint/canvas_and_painter_home.dart';
import 'package:flutter_cookbook/navigation/flutter_native/flutter_native_home.dart';
import 'package:flutter_cookbook/navigation/get_x/get_x_home.dart';
import 'package:flutter_cookbook/navigation/navigation_home.dart';
import 'package:flutter_cookbook/routes.dart';
import 'package:flutter_cookbook/scroll_view/custom_scroll_view_01/custom_scroll_view_01.dart';
import 'package:flutter_cookbook/scroll_view/scroll_view_home.dart';
import 'package:flutter_cookbook/state_management/inherited_widget/inherited_widget_home.dart';
import 'package:flutter_cookbook/state_management/inherited_widget/state_root.dart';
import 'package:flutter_cookbook/state_management/inh_sample/simple_inherited_widget.dart';
import 'package:flutter_cookbook/state_management/state_management_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StateRoot(
      commonData: CommonData(isHappy: false),
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.amber,
          secondaryHeaderColor: Colors.green,
          bottomAppBarColor: Colors.amberAccent,
        ),
        initialRoute: home,
        routes: {
          home: (context) => const HomePage(),
          navigationHome: (context) => const NavigationHomePage(),
          navigationFlutterNativeHome: (context) =>
              const FlutterNativeHomePage(),
          navigationFlutterNativeFirstRoute: (constext) =>
              const FlutterNativeFirstRoute(),
          navigationFlutterNativeSecondRoute: (context) =>
              const FlutterNativeSecondRoute(),
          navigationGetXHome: (context) => const GetXHomePage(),
          navigationGetXFirstRoute: (context) => const GetXFirstRoute(),
          navigationGetXSecondRoute: (context) => const GetXSecondRoute(),
          stateManagement: (context) => const StateManagementHome(),
          stateManagementInheritedWidget: (context) =>
              const InheritedWidgetHome(),
          stateManagementGetX: (context) => Container(),
          stateManagementProvider: (context) => Container(),
          simpleInheritedWidgetExample: (context) =>
              const SimpleInheritedWidgetHome(),
          scrollView: (context) => const ScrollViewHome(),
          customScrollView01: (context) => const CustomScrollView01(),
          canvasAndPainter: (context) => const CanvasAndPainterHome(),
          canvasHome: (context) => Container(),
          painterHome: (context) => Container(),
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, navigationHome);
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Navigation'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, stateManagement);
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('State Management'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, scrollView);
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Scroll View'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, canvasAndPainter);
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Canvas and Painter'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
