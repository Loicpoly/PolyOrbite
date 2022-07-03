import 'package:flutter/material.dart';
import '../Template.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarPC(),
      endDrawer: const AppbarPhone(),
      body: const Center(
        child: Text('HOME PAGE'),
      ),
    );
  }
}
