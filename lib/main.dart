import 'package:beep_aplication/constants/colors.dart';
import 'package:beep_aplication/screens/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: FontColors.primaryColor),
        useMaterial3: true,
        scaffoldBackgroundColor: FontColors.secondaryColor,
      ),
      home: const MyHomePage(title: 'Beep'),
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FontColors.primaryColor,
        title: Text(title, style: const TextStyle(color: TextColor.primaryColor)),
      ),
      body: Menu(),
    );
  }
}
