import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/notification_model.dart';

class ApiHandler {
  static Future<List<NotificationModel>> getNotification() async {
    const url =
        "https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json";

    final response = await http.get(Uri.parse(url));
    List tempList = [];
    if (response.statusCode == 200) {
      for (var v in jsonDecode(response.body)['data']) {
        tempList.add(v);
      }
    }
    return NotificationModel.notificationFromAPi(tempList);
  }
}
