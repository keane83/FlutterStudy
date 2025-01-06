import 'package:flutter/material.dart';

class MyButtonPage extends StatelessWidget {
  const MyButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyButtonPage"),
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
              height: 10,
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint("1 setState");
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.pink),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                shadowColor: WidgetStateProperty.all(Colors.grey),
                fixedSize: WidgetStateProperty.all(const Size(200, 50)),
                elevation: WidgetStateProperty.all(10),
              ),
              child: const Text("ElevatedButton"),
            ),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            TextButton(
              onPressed: () {
                debugPrint("2 setState");
              },
              style: ButtonStyle(
                textStyle:
                    WidgetStateProperty.all(const TextStyle(fontSize: 30)),
                fixedSize: WidgetStateProperty.all(const Size(300, 50)),
              ),
              child: const Text(
                "TextButton",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("OutlinedButton"),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline_rounded)),
            ElevatedButton.icon(
                onPressed: () {},
                label: const Text("ElevatedButton"),
                icon: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
