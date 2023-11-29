import 'package:flutter/material.dart';
import 'package:pragathi_task/api_handler/api_handler.dart';
import 'package:pragathi_task/models/notification_model.dart';

import 'widgets/list_tile_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late Future<List<NotificationModel>> notificationsFuture;

  @override
  void initState() {
    super.initState();
    notificationsFuture = getNotification();
  }

  @override
  Widget build(BuildContext context) {
    print(notificationsFuture.toString());
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_circle_left_rounded,
            color: Colors.green,
          ),
        ),
        title: const Text("Notifications"),
      ),
      body: FutureBuilder<List<NotificationModel>>(
        future: notificationsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return NotificationTile(
                  index: index,
                  snapshot: snapshot,
                );
              },
            );
          }

          return const Center(
            child: Text("No data available"),
          );
        },
      ),
    );
  }

  Future<List<NotificationModel>> getNotification() async {
    return await ApiHandler.getNotification();
  }
}
