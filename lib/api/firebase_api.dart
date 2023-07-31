//make the messaging class

import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handelBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification!.title}');
  print('Body: ${message.notification!.body}');
  print('Payload: ${message.data}');
}

class FirebaseApi {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;
  static Future<void> init() async {
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    token = await messaging.getToken();
    print('Token: $token');
    FirebaseMessaging.onBackgroundMessage(handelBackgroundMessage);
  }
}
