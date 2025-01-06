
import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text("ac_unit"),
            subtitle: const Text("subtitle"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              debugPrint("ac_unit");
            },
          ),
        ],
      ),
    );
  }
}