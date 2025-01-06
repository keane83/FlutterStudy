import 'package:flutter/material.dart';
import 'package:flutter_first/basic_ui/list_view_build.dart';
import 'package:flutter_first/basic_ui/list_view_delegate.dart';
import 'package:flutter_first/basic_ui/list_view_normal.dart';
import 'package:flutter_first/basic_ui/text.dart';

class MyListViewPage extends StatelessWidget { 
  const MyListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyListViewPage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      // body: const MyListView(),
      // body: const MyListViewByBuild(),
      body: const MyListViewWithDelegate()
    );
  }
}

