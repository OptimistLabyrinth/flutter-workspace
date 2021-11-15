import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_cookbook/navigation/flutter_native/flutter_native_home_page.dart';
import 'package:flutter_cookbook/navigation/get_x/get_x_home_page.dart';
import 'package:flutter_cookbook/navigation/navigation_home_page.dart';
import 'package:flutter_cookbook/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      ),
      initialRoute: Home,
      routes: {
        Home: (context) => const HomePage(),
        NavigationHome: (context) => const NavigationHomePage(),
        NavigationFlutterNativeHome: (context) => const FlutterNativeHomePage(),
        NavigationFlutterNativeFirstRoute: (constext) =>
        const FlutterNativeFirstRoute(),
        NavigationFlutterNativeSecondRoute: (context) =>
        const FlutterNativeSecondRoute(),
        NavigationGetXHome: (context) => const GetXHomePage(),
        NavigationGetXFirstRoute: (context) => const GetXFirstRoute(),
        NavigationGetXSecondRoute: (context) => const GetXSecondRoute(),
      },
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
                Navigator.pushNamed(context, NavigationHome);
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Navigation'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
