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
  List<int> numbers = [];

  void ocClicked() {
    setState(
      () {
        numbers.add(numbers.length);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: const Color(0xFF181818),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click me',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              for (var n in numbers) Text('$n'),
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
