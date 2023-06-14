import 'package:flutter/material.dart';
import 'gameScreen.dart';

void main() {
 runApp(GameApp());
}
class GameApp extends StatelessWidget {
  const GameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameScreen(),
    );
  }
}


