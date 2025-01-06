import 'package:flutter/material.dart';

class MyGesturePage extends StatefulWidget {
  const MyGesturePage({super.key});

  @override
  State<MyGesturePage> createState() => _MyGesturePageState();
}

class _MyGesturePageState extends State<MyGesturePage> {
  var touchX = 0.0;
  var touchY = 0.0;

  Widget _gestureView() {
    return GestureDetector(
      onTap: () {
        debugPrint("onTap");
      },
      onDoubleTap: () {
        debugPrint("onDoubleTap");
      },
      onLongPress: () {
        debugPrint("onLongPress");
      },
      onPanUpdate: (details) {
        debugPrint("onPanUpdate");
        setState(() {
          touchX = details.localPosition.dx;
          touchY = details.localPosition.dy;
        });
      },
      onPanEnd: (details) {
        debugPrint("onPanEnd");
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyGesturePage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            _gestureView(),
            Text("touchX: $touchX, touchY: $touchY"),
          ],
        ),
      ),
    );
  }
}
