import 'package:flutter/material.dart';

class MyListViewWithDelegate extends StatefulWidget {
  const MyListViewWithDelegate({super.key});

  @override
  State<MyListViewWithDelegate> createState() =>
      MyListViewWithDelegateSate();
}

class MyListViewWithDelegateSate extends State<MyListViewWithDelegate> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      debugPrint("_scrollController Listenning ${_scrollController.offset}");
    });
    super.initState();
    debugPrint("initState");
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.ac_unit),
          title: Text("第 $index 个"),
          subtitle: const Text("subtitle"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            debugPrint("ac_unit");
          },
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(color: Colors.red, height: 1, thickness: 1);
      },
      itemCount: 20,
    );
  }
}
