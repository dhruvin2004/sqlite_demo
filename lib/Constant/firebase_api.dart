
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:sqlite_demo/screen/puch_notification/notification_view.dart';

class FirebaseApi{


  final _firebaseMessaging = FirebaseMessaging.instance;


  Future<void> initNotification ()async{

    await _firebaseMessaging.requestPermission();

    final fcmToken = await _firebaseMessaging.getToken();
    print("Token : $fcmToken");


  }




  void handleMessage(RemoteMessage? message)
  {
    if(message == null) return;
     Get.to(NotificationView(),arguments: message);
  }



  Future initPushNotifications()async{
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}