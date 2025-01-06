//内容: APP的生命周期和Widget的生命周期
//ListView: 简单使用

// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_first/common/router.dart';


class ListItemDataType {
  final IconData iconData;
  final String title;
  ListItemDataType(this.iconData,this.title);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      color: Colors.green,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: PageRouter.allMap,
      initialRoute: PageRouter.home,
    );
  }
}