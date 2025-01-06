import 'package:flutter/material.dart';

class MyIndicatorPage extends StatelessWidget {
  const MyIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyIndicatorPage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const IndicatorMy(),
    );
  }
}

class IndicatorMy extends StatelessWidget {
  const IndicatorMy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 50,
            crossAxisSpacing: 50,
            childAspectRatio: 1,
          ),
          children: const [
            Center(
                child: CircularProgressIndicator(
              color: Colors.pink,
            )),
            Center(child: LinearProgressIndicator(color: Colors.lightGreen)),
            Center(
                child: RefreshProgressIndicator(
              backgroundColor: Colors.blueGrey,
              color: Colors.limeAccent,
            )),
            Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.pink,
              strokeWidth: 10,
              color: Colors.orange,
            )),
          ]),
    );
  }
}
