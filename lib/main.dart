import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'pages/user_page.dart';
import 'pages/main_page.dart';
import 'pages/driving_on_page.dart';
import 'pages/driving_page.dart';
import 'pages/ranking_page.dart';

void main() async {
  await dotenv.load(fileName: "config/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Driving Behavior Analysis",
      initialRoute: '/',
      routes: {
        '/': (context) => main_page(),
        '/user_page': (context) => user_page(),
        '/driving_on_page': (context) => driving_on_page(),
        '/driving_page': (context) => driving_page(),
        '/ranking_page': (context) => ranking_page(),
      },
    );
  }
}
