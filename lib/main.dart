import 'dart:math';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sandar = 1;
  String text = 'taksan';

  void generateRandom() {
    Random random = Random();
    setState(() {
      sandar = random.nextInt(100);
      if (sandar % 2 == 0) {
        text = 'jupsan';
      } else {
        text = 'taksan';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Random Number'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '$sandar',
            style: const TextStyle(fontSize: 70),
          ),
          ElevatedButton(
            onPressed: () {
              generateRandom();
            },
            child: const Text('Generate Random'),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 50),
          )
        ]),
      ),
    );
  }
}
