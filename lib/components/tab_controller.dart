import 'package:flutter/material.dart';
import 'package:project3/lib.dart';
import 'package:project3/screens/business_card_screen.dart';
import 'package:project3/screens/predictor_screen.dart';
import 'package:project3/screens/resume_screen.dart';

class MainTabController extends StatelessWidget {
  MainTabController({super.key});

  static const tabs = [
    Tab(icon: Icon(Icons.account_circle)),
    Tab(icon: Icon(Icons.assignment_outlined)),
    Tab(icon: Icon(Icons.help_outline_sharp))
  ];

  final screens = [
    BusinessCardScreen(),
    ResumeScreen(),
    const PredictorScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: const Text(
                'Call Me Maybe',
                style: TextStyle(fontFamily: 'PlexItalic'),
              ),
              bottom: const TabBar(
                indicator: BoxDecoration(
                    gradient:
                        RadialGradient(colors: [Colors.red, Colors.blue])),
                tabs: tabs,
              )),
          body: TabBarView(children: screens),
        ));
  }
}
