import 'package:flutter/material.dart';
import '../Template.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({Key? key}) : super(key: key);
  @override
  PhotosPageState createState() => PhotosPageState();
}

class PhotosPageState extends State<PhotosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarPC(),
      endDrawer: const AppbarPhone(),
      body: const Center(
        child: Text('PHOTOS PAGE'),
      ),
    );
  }
}
