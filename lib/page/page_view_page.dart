import 'package:flutter/material.dart';

class MyPageViewPage extends StatefulWidget {
  const MyPageViewPage({super.key});

  @override
  State<MyPageViewPage> createState() => _MyPageViewPageState();
}

class _MyPageViewPageState extends State<MyPageViewPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyPageViewPage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SizedBox(
        height: 300,
        child: PageView(
          // reverse: true,
          padEnds: false,
          children: const [
            PageItemView(
              title: "第一个page",
              color: Colors.pink,
            ),
            PageItemView(
              title: "第二个page",
              color: Colors.green,
            ),
            PageItemView(
              title: "第三个page",
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class PageItemView extends StatefulWidget {
  final String title;
  final Color color;
  const PageItemView(
      {super.key, required this.title, required this.color});

  @override
  State<PageItemView> createState() => _PageItemViewState();
}

class _PageItemViewState extends State<PageItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      child: Center(
        child: Text(widget.title),
      ),
    );
  }
}
