import 'package:example_1/presentation/pages/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
      routes: {
        "juan": (context) => const Home(),
      },
    );
  }
}
