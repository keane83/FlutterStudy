import 'package:flutter/material.dart';
import 'package:flutter_first/basic_ui/text.dart';

class MyBarViewPage extends StatefulWidget {
  const MyBarViewPage({super.key});

  @override
  State<MyBarViewPage> createState() => _MyBarViewPageState();
}

class _MyBarViewPageState extends State<MyBarViewPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  var bottomNavigationBarIndex = 0;
  final List<String> tabStrs = ["Tab 1", "Tab 2", "Tab 3"];

  @override
  void initState() {
    tabController = TabController(length: tabStrs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyBarViewPage"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.link_outlined),
          color: Colors.pink,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_sharp),
            color: Colors.pink,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: const Icon(Icons.change_circle),
            color: Colors.pink,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        bottom: TabBar(
          tabs: tabStrs
              .map((e) => Tab(
                    text: e,
                    icon: const Icon(Icons.cloud),
                  ))
              .toList(),
          controller: tabController,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(child: Text("Tab 1")),
          Center(child: Text("Tab 2")),
          Center(child: Text("Tab 3")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Business",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "School",
          ),
        ],
        currentIndex: bottomNavigationBarIndex,
        onTap: (index) {
          debugPrint("index: $index");
          setState(() {
            bottomNavigationBarIndex = index;
          });
        },
        selectedItemColor: Colors.pink,
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
