import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
                child: Text(
              'Journey Memo',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),
            )),
          ),
        ),
      ),
    );
  }
}
