import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 KO var num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have pressed button this many times $num"),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      num++;
                    });
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("Press me"),)
            ],
          ),
        ),
      ),
    );
  }
}
