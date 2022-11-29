import 'package:booking/screens/botton_bar.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home:   BottonBar(),
    );
  }
}
