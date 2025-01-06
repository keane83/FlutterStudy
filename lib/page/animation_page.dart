import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimationPage extends StatefulWidget {
  const MyAnimationPage({super.key});

  @override
  State<MyAnimationPage> createState() => _MyAnimationPageState();
}

class _MyAnimationPageState extends State<MyAnimationPage> {
  var redWidth = 100.0;
  var redHeight = 100.0;
  var angle = pi * 0;
  var redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyAnimationPage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 50,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceOut,
              width: redWidth,
              height: redHeight,
              color: redColor,
              transform: Matrix4.rotationZ(angle),
              child: Stack(
                children: [
                GestureDetector(
                  onTap: () => {
                    setState(() {
                      redWidth = redWidth == 100 ? 300 : 100;
                      redHeight = redHeight == 100 ? 300 : 100;
                      redColor =
                          redColor == Colors.green ? Colors.red : Colors.green;
                      angle = angle == pi * 0 ? pi * 0.3 : pi * 0;
                    })
                  },
                ),
                const Center(child: Text("点击我!")),
              ]),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 120,
              height: 120,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
