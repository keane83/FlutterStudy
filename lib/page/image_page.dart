import 'package:flutter/material.dart';

class MyImagePage extends StatelessWidget {
  const MyImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyImagePage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Image1(), ImageNet()],
        ),
      ),
    );
  }
}

class Image1 extends StatelessWidget {
  const Image1({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/image/meinv.jpeg',
      width: 300,
    );
  }
}

class ImageNet extends StatelessWidget {
  const ImageNet({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://pics0.baidu.com/feed/f603918fa0ec08fa760e2cf1c0fb5b6355fbda79.jpeg",
      width: 250,
      // colorBlendMode: BlendMode.difference,
      // color: Colors.pink,
    );
  }
}
