import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqlite_demo/screen/api_module/api_view.dart';
import 'package:sqlite_demo/screen/home_page/home_page.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiView(),
    );
  }
}
