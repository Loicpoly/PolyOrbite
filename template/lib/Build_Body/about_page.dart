import 'package:flutter/material.dart';
import '../Template.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  AboutPageState createState() => AboutPageState();
}

class AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarPC(),
      endDrawer: const AppbarPhone(),
      body: const Center(
        child: Text('ABOUT PAGE'),
      ),
    );
  }
}
