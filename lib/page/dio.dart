import 'package:flutter/material.dart';
import 'package:flutter_first/common/utility.dart';

class MyDioDemoWidgte extends StatefulWidget {
  const MyDioDemoWidgte({super.key});

  @override
  State<MyDioDemoWidgte> createState() => _MyDioDemoWidgteState();
}

class _MyDioDemoWidgteState extends State<MyDioDemoWidgte> {

  String responseStr = '';

  @override
  initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var response1 = await Utility.getHttp(url: "http://62.234.46.195:3000/allmsgsinfo?userid=52");
    setState(() {
      responseStr = response1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Text(responseStr, style: const TextStyle(fontSize: 10, decoration: TextDecoration.none));
  }
}