import 'package:flutter/material.dart';
import 'package:flutter_first/page/animation_page.dart';
import 'package:flutter_first/page/bar_view_page.dart';
import 'package:flutter_first/page/button_page.dart';
import 'package:flutter_first/page/dio.dart';
import 'package:flutter_first/page/gesture_page.dart';
import 'package:flutter_first/page/home.dart';
import 'package:flutter_first/page/icon_page.dart';
import 'package:flutter_first/page/image_page.dart';
import 'package:flutter_first/page/indicator_page.dart';
import 'package:flutter_first/page/list_view_page.dart';
import 'package:flutter_first/page/page_view_page.dart';
import 'package:flutter_first/page/perminssion_handler.dart';
import 'package:flutter_first/page/shared_preference.dart';
import 'package:flutter_first/page/text_page.dart';

class PageRouter {
    static const String home = "/";
    static const String myText = "/my_text";
    static const String myButton = "/my_button";
    static const String myIcon = "/my_icon";
    static const String myImage = "/my_image";
    static const String myIndicator = "/my_indicator";
    static const String myAnimation = "/my_animation";
    static const String myGesture = "/my_gesture";
    static const String myListView = "/my_list_view";
    static const String myBarsView = "/my_bars_view";
    static const String myPageView = "/my_page_view";
    static const String mySharedPreference = "/my_shared_preference";
    static const String myDio = "/my_dio";
    static const String myPermissionHandler = "/my_permission_handler";

    static Map<String,WidgetBuilder> allMap = {
      PageRouter.home: (context)=> const MyHomePage(title: "Home Page"),
      PageRouter.myText: (context)=> const MyTextPage(),
      PageRouter.myButton: (context)=> const MyButtonPage(),
      PageRouter.myIcon: (context)=> const MyIconPage(),
      PageRouter.myImage: (context)=> const MyImagePage(),
      PageRouter.myIndicator: (context)=> const MyIndicatorPage(),
      PageRouter.myAnimation: (context)=> const MyAnimationPage(),
      PageRouter.myGesture: (context)=> const MyGesturePage(),
      PageRouter.myListView: (context)=> const MyListViewPage(),
      PageRouter.myBarsView: (context)=> const MyBarViewPage(),
      PageRouter.myPageView: (context)=> const MyPageViewPage(),
      PageRouter.mySharedPreference: (context)=> const MySharedPreferenceDemoWidget(),
      PageRouter.myDio: (context)=> const MyDioDemoWidgte(),
      PageRouter.myPermissionHandler: (context)=> const MyPerminssionDemoWidget(),
    };
}