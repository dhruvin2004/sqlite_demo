





import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_controller.dart';

class ApiView extends StatelessWidget {
  const ApiView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ApiController(),
        builder: (_){

      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("API Calling"),
        ),
        body: (_.data == null) ?
        Center(child: CircularProgressIndicator(color: Colors.blue,),) :ListView(
          children: [
            ... List.generate(_.data.length, (index) =>  Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child:Column(
                children: [
                  Text("ID : ${_.data[index].id} "),
                  Text("Name : ${_.data[index].name}"),
                  Text("year : ${_.data[index].year}"),
                  Text("pantone_value : ${_.data[index].pantoneValue}")
                ],
              ) ,
            ),)
          ],
        ),
      );
    });
  }
}
