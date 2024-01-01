import 'package:flutter/material.dart';

class BallScreen extends StatefulWidget {
  const BallScreen({super.key});

  @override
  State<BallScreen> createState() => _BallScreenState();
}

class _BallScreenState extends State<BallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Ball"),
      ),
    );
  }
}
