import 'package:flutter/material.dart';
import 'package:tooflix/screens/home_screen.dart';
import 'package:tooflix/services/api_service.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
