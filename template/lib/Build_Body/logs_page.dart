import 'package:flutter/material.dart';
import '../Template.dart';

class LogsPage extends StatefulWidget {
  const LogsPage({Key? key}) : super(key: key);
  @override
  LogsPageState createState() => LogsPageState();
}

class LogsPageState extends State<LogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarPC(),
      endDrawer: const AppbarPhone(),
      body: const Center(
        child: Text('LOGS PAGE'),
      ),
    );
  }
}
