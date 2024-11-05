import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_provider.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(create:(_) => CounterProvider(),
                                    child: HomePage(),), 
    );
  }
}
