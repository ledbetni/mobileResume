import 'package:flutter/material.dart';
import 'lib.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainTabController(),
    );
  }
}
