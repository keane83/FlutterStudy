import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIconPage extends StatelessWidget {
  const MyIconPage({super.key});

  @override
  Widget build(BuildContext context) {

    const String assetName = 'assets/image/woman.svg';
    final Widget svgIcon = SvgPicture.asset(
      assetName,
      width: 100,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("MyIconPage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                const Icon(Icons.favorite, size: 50, color: Colors.pink),
                const Icon(
                  Icons.audiotrack,
                  size: 50,
                  color: Colors.blue,
                  fill: 0.1,
                ),
                const Icon(
                  IconData(0xe6d2, fontFamily: "MyCustomIcon"),
                  size: 50,
                  color: Colors.purple,
                ),
                const Icon(
                  IconData(0xe6d3, fontFamily: "MyCustomIcon"),
                  size: 50,
                  color: Colors.green,
                ),
                const Icon(
                  IconData(0xe6d4, fontFamily: "MyCustomIcon"),
                  size: 50,
                  color: Colors.pink,
                ),
                const Icon(
                  IconData(0xe6d5, fontFamily: "MyCustomIcon"),
                  size: 50,
                  color: Colors.blueAccent,
                ),
                const Icon(
                  IconData(0xe6d6, fontFamily: "MyCustomIcon"),
                  size: 50,
                ),
                svgIcon,
              ],
            ),
          )
        ],
      ),
    );
  }
}
