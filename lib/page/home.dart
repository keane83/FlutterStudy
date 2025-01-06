//内容: APP的生命周期和Widget的生命周期
//ListView: 简单使用

// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_first/common/router.dart';

class ListItemDataType {
  final IconData iconData;
  final String title;
  final String pageRouterName;
  ListItemDataType(this.iconData, this.title, this.pageRouterName);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var dataArray = [
      ListItemDataType(Icons.account_balance, "Text", PageRouter.myText),
      ListItemDataType(Icons.add_circle_sharp, "Icon", PageRouter.myIcon),
      ListItemDataType(Icons.access_time, "Button", PageRouter.myButton),
      ListItemDataType(Icons.add_circle_sharp, "Image", PageRouter.myImage),
      ListItemDataType(
          Icons.add_circle_sharp, "Indicator", PageRouter.myIndicator),
      ListItemDataType(Icons.add_circle_sharp, "Gesture", PageRouter.myGesture),
      ListItemDataType(
          Icons.add_circle_sharp, "Animation", PageRouter.myAnimation),
      ListItemDataType(
          Icons.add_circle_sharp, "List View", PageRouter.myListView),
      ListItemDataType(
          Icons.add_circle_sharp, "Bars View", PageRouter.myBarsView),
      ListItemDataType(
          Icons.add_circle_sharp, "Page View", PageRouter.myPageView),
      ListItemDataType(
          Icons.add_circle_sharp, "Shared Preference", PageRouter.mySharedPreference),
      ListItemDataType(Icons.add_circle_sharp, "Dio", PageRouter.myDio),
      ListItemDataType(
          Icons.add_circle_sharp, "Perminssion Handler", PageRouter.myPermissionHandler),
    ];

    var myList = Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
      itemCount: dataArray.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            index == 0
                ? Container(
                    width: 700,
                    color: Colors.pink,
                    child: const Center(
                      child: Text("Normal Widget",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  )
                : const SizedBox(),

            index == 10
                ? Container(
                    width: 700,
                    color: Colors.pink,
                    child: const Center(
                      child: Text(
                        "PlugIn Widget",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  )
                : const SizedBox(),
            ListTile(
              leading: Icon(dataArray[index].iconData),
              title: Text(dataArray[index].title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  )),
              // child: Text("data"),
              onTap: () {
                debugPrint(index.toString() + dataArray[index].pageRouterName);
                Navigator.pushNamed(context, dataArray[index].pageRouterName);
              },
              trailing: const Icon(Icons.arrow_right_outlined),
            ),
            const Divider(),
          ],
        );
      },
    ));

    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: myList);
  }

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
    debugPrint("###APP Lift Cycle:$state");

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
