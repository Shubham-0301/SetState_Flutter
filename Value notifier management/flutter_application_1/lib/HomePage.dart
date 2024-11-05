import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  ValueNotifier<int> _counterChanges = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: ValueListenableBuilder<int>(
          valueListenable: _counterChanges,
          builder: (ctx, value, child) {
            return Text(
          "Counter is $value",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        );
          },
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            _counter++;
            _counterChanges.value = _counter;
          },
          icon: Icon(Icons.add)),
    );
  }
}
