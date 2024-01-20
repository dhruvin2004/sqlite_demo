import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sqlite_demo/Constant/db_helper.dart';
import 'package:toast/toast.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> allData = [];

  bool isTrue = true;

  TextEditingController titleCon = TextEditingController();
  TextEditingController descCon = TextEditingController();

  void refreshData() async {
    final data = await SQLHelper.getData();
    allData = data;
    isTrue = false;
    titleCon.clear();
    descCon.clear();
    update();
  }



  Future<void> addData()async {
    await SQLHelper.createData(titleCon.text, descCon.text);
    refreshData();
    Get.back();

  }

  Future<void> updateData(int id)async {
    await SQLHelper.updateData(id,titleCon.text, descCon.text);
    refreshData();
    Get.back();
  }

  Future<void> removeData(int id)async {
    await SQLHelper.deleteData(id);
    refreshData();
  }





  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    refreshData();
  }




}
