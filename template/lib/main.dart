import 'package:flutter/material.dart';
import './Build_Body/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: colorCustom),
        // ignore: todo
        // TODO: change here by the desired class
        home: const HomePage());
  }
}

Map<int, Color> color = {
  50: const Color.fromARGB(24, 8, 24, 46),
  100: const Color.fromARGB(24, 8, 24, 56),
  200: const Color.fromARGB(24, 8, 24, 66),
  300: const Color.fromARGB(24, 8, 24, 76),
  400: const Color.fromARGB(24, 8, 24, 86),
  500: const Color.fromARGB(24, 8, 24, 96),
  600: const Color.fromARGB(24, 8, 24, 106),
  700: const Color.fromARGB(24, 8, 24, 116),
  800: const Color.fromARGB(24, 8, 24, 126),
  900: const Color.fromARGB(24, 8, 24, 136),
};
// RGB color code: 8, 24, 46
MaterialColor colorCustom = MaterialColor(0xFF08182E, color);
