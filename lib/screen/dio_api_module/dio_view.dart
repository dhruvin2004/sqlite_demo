
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dio_controller.dart';

class DioView extends StatelessWidget {
  const DioView({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder(
        init: DioController(),
        builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text("API Calling with Dio"),
        ),
      );
    });
  }
}
