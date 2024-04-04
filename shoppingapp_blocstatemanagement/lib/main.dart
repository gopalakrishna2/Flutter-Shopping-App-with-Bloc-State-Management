import 'package:flutter/material.dart';
import 'package:shoppingapp_blocstatemanagement/features/home/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 245, 180, 81)
      ),
      home: const Home(),
    );
    }
  
}
