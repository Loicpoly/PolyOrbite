// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import './Build_Body/about_page.dart';
import './Build_Body/logs_page.dart';
import './Build_Body/photos_pages.dart';

// ignore: non_constant_identifier_names
void redirect_page(BuildContext context, Widget Function() redirectPage) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => redirectPage()),
  );
}

// ignore: non_constant_identifier_names
Widget redirect_about() {
  return const AboutPage();
}

Widget redirect_logs() {
  return const LogsPage();
}

Widget redirect_photos() {
  return const PhotosPage();
}
