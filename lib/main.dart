//内容: APP的生命周期和Widget的生命周期
//ListView: 简单使用

// import 'dart:ffi';
import 'package:flutter/material.dart';


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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // home: MyAppNew()
      home: const MyHomePage(title: 'Flutter Demo By LJ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  //初始化时候调用
  @override
  void initState() {
    super.initState();
    debugPrint("initState");
  }

  //彻底清除时候调用
  @override
  void dispose() {
    super.dispose();
    debugPrint("dispose");
  }

  //当本widget在上层节点中的层级发上变化, 或者上层节点中存在widget类型变化时候调用
  //widget树中，若节点的父级结构中的层级 或 父级结构中的任一节点的widget类型有变化，节点会调用didChangeDependencies；
  //若仅仅是父级结构某一节点的widget的某些属性值变化，节点不会调用didChangeDependencies
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("didChangeDependencies");
  }

  //属性配置变化,在父容器组件重绘时才调用该方法
  //widget树中，若节点调用setState方法，节点本身不会触发didUpdateWidget，
  //此节点的子节点 会 调用didUpdateWidget
  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("didUpdateWidget");
  }


  //非激活状态期的生命周期函数,Widget还没有别消除
  @override
  void deactivate() {
    super.deactivate();
    debugPrint("deactivate");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    debugPrint("setState");
  }

  @override
  Widget build(BuildContext context) {
    var dataArray = [
      ListItemDataType(Icons.account_balance, "Text"),
      ListItemDataType(Icons.access_time, "Button"),
      ListItemDataType(Icons.add_circle_sharp, "Image")
    ];
  
    var myList = Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
          itemCount: dataArray.length,
          itemBuilder: (context,index) {
            return ListTile(
              leading: Icon(dataArray[index].iconData),
              title: Text(dataArray[index].title, style: const TextStyle(color: Colors.pink)),
              // child: Text("data"),
              onTap: (){
                debugPrint(index.toString());
              },
            );
          },
        )
    );

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: myList
    );
  }
}


class MyWidget extends StatefulWidget with WidgetsBindingObserver {
  final String? testStr;
  const MyWidget({super.key, this.testStr});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}


//任意层级Widget都可以加WidgetsBindingObserver 来监听App生命周期
//1 with WidgetsBindingObserver
//2 执行 WidgetsBinding.instance.addObserver(this);
//3 @override void didChangeAppLifecycleState(AppLifecycleState state)
//4 取消绑定 WidgetsBinding.instance.removeObserver(this);
//detached
class _MyWidgetState extends State<MyWidget> with WidgetsBindingObserver {

  //监听App生命周期:3 @override void didChangeAppLifecycleState(AppLifecycleState state)
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    debugPrint("###APP Lift Cycle:"+state.toString());

    //detached

  }

  //参考上面Widget的注释
  @override
  void initState() {
    super.initState();
    debugPrint("2 initState");

    //监听App生命周期:2
    WidgetsBinding.instance.addObserver(this);

  }

  //参考上面Widget的注释
  @override
  void dispose() {
    super.dispose();
    debugPrint("2 dispose");

    //监听App生命周期:4
    WidgetsBinding.instance.removeObserver(this);
  }

  //参考上面Widget的注释
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("2 didChangeDependencies");
  }

  //参考上面Widget的注释
  @override
  void didUpdateWidget(covariant MyWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("2 didUpdateWidget");
  }

  //参考上面Widget的注释
  @override
  void deactivate() {
    super.deactivate();
    debugPrint("2 deactivate");
  }

  //参考上面Widget的注释
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    debugPrint("2 setState");
  }

  //参考上面Widget的注释
  @override
  Widget build(BuildContext context) {
    return Text(widget.testStr ?? '');
  }
}


class MyAppNew extends StatelessWidget {
  const MyAppNew({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}