import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqlite_demo/firebase_options.dart';
import 'package:sqlite_demo/screen/api_module/api_view.dart';
import 'package:sqlite_demo/screen/dio_api_module/dio_view.dart';
import 'package:sqlite_demo/screen/home_page/home_page.dart';
import 'package:sqlite_demo/screen/puch_notification/notification_view.dart';
import 'package:toast/toast.dart';

import 'Constant/firebase_api.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  FirebaseApi().initNotification();
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
      home: DioView(),
    );
  }
}
