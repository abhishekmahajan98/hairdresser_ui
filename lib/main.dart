import 'package:flutter/material.dart';
import 'package:hairdresser_ui/pages/first_page.dart';
import 'package:hairdresser_ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => FirstPage(),
        '/home_page': (context) => HomePage(),
      },
    );
  }
}
