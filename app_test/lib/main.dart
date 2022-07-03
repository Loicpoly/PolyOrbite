//import 'package:app_test/main_old.dart';
import 'package:flutter/material.dart';
import './random_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final word = WordPair
    //.random(); //Different from const because it can be a variable constant like datetime
    return MaterialApp(
        // TODO: Make the line below for the theme app Woks
        theme:
            ThemeData(primaryColor: Colors.purple[900]), //not Working idk why
        home: const RandomWords());
  }
}


    // body: Center(
    //     child: Text(
    //   textAlign: TextAlign.right,
    //   WordPair.random().asPascalCase,
    // )));

