import 'package:flutter/material.dart';
import 'package:testapps/BottomTab/bottab.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple apps',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: BotTab(selectedIndex: 0),

    );
  }
}


