


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqlite_demo/screen/puch_notification/notification_controller.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: NotificationController(),
        builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text("Puch Notification"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            (_.arguments == null)?Center(child: CircularProgressIndicator(),):Text(_.arguments),
          ],
        ),
      );
    });
  }
}
