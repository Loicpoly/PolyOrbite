import 'package:flutter/material.dart';
import './Template.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.orange),
        // ignore: todo
        // TODO: change here by the desired class
        home: const Template());
  }
}
