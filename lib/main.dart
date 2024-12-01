import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void ocClicked() {
    setState(
      () {
        counter = counter + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: ocClicked,
                icon: const Icon(
                  Icons.add_alarm_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
