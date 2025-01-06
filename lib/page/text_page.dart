import 'package:flutter/material.dart';
import 'package:flutter_first/basic_ui/text.dart';

class MyTextPage extends StatelessWidget { 
  const MyTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyTextPage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const Column(
        children: [
            MyText()
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}