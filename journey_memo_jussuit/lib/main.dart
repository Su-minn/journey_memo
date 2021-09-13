import 'package:flutter/material.dart';
import 'package:journey_memo_jussuit/constants/material_deep_champagne.dart';
import 'package:journey_memo_jussuit/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: deep_champagne),
    );
  }
}

