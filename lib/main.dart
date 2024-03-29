import 'package:flutter/material.dart';
import 'package:zb_food_app/screens/main_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,colorScheme: ColorScheme.fromSeed(seedColor: Color(0xfffffff))),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
