





import 'package:dio/dio.dart';
import 'package:get/state_manager.dart';

import 'modal.dart';

class DioController extends GetxController{



  List<ListData> newsData = [];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }


  Future<void> fetchData() async {
    Dio dio = Dio();
    try {
      Response response = await dio.get("https://reqres.in/api/users?page=1&per_page=2");

      if (response.statusCode == 200) {
        DataModal dataModal = DataModal.fromJson(response.data);
        newsData.addAll(dataModal.data!);
       
        update();
      }
    } catch (e) {
      print("Error fetching data: $e");
    }
  }



}



