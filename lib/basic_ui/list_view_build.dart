
import 'package:flutter/material.dart';

class MyListViewByBuild extends StatefulWidget {
  const MyListViewByBuild({super.key});

  @override
  State<MyListViewByBuild> createState() => _MyListViewByBuildState();
}

class _MyListViewByBuildState extends State<MyListViewByBuild> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
      return ListTile(
        leading: const Icon(Icons.ac_unit),
        title: const Text("ac_unit"),
        subtitle: Text("title $index"),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          debugPrint("ac_unit");
        },
      );
    });
  }
}