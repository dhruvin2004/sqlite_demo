



import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sqlite_demo/screen/api_module/modal.dart';

class ApiController extends GetxController{




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getApiRespones();
  }

  List<Datum> data = [];
  UserModal? userModal;

  Future getApiRespones()async{
    http.Response response = await http.get(Uri.parse("https://reqres.in/api/unknown"));

    try{
      if(response.statusCode == 200)
      {
        userModal = UserModal.fromJson(json.decode(response.body));
        data.addAll(userModal!.data!);
        print(data);
        return data;
      }
    }
    catch (e)
    {
      debugPrint("Error $e");
    }

    
  }


}