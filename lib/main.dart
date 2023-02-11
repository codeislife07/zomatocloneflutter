import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zomatocloneflutte/Screen/LoginScreen.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  HttpOverrides.global = MyHttpOverrides();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  static GlobalKey<NavigatorState> appnavKey=GlobalKey<NavigatorState>();
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: appnavKey,
      title: 'Zomato Clone',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: "okra"
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

