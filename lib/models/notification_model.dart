class NotificationModel {
  String? image;
  String? title;
  String? body;
  String? timestamp;

  NotificationModel({this.image, this.title, this.body, this.timestamp});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    body = json['body'];
    timestamp = json['timestamp'];
  }

  static List<NotificationModel> notificationFromAPi(
      List<dynamic> notificationsSnapshot) {
    return notificationsSnapshot
        .map((json) => NotificationModel.fromJson(json))
        .toList();
  }
}
