import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/notification_model.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  final AsyncSnapshot<List<NotificationModel>> snapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    DateTime currentDateTime = DateTime.now();

    DateTime snapshotDateTime = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS")
        .parse(snapshot.data![index].timestamp!);

    Duration difference = currentDateTime.difference(snapshotDateTime);

    String timeDifference = '';

    if (difference.inMinutes < 60) {
      timeDifference = '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      timeDifference = '${difference.inHours} hours ago';
    } else {
      timeDifference = '${difference.inDays} days ago';
    }

    return ListTile(
      leading: SizedBox(
        width: 50, // Set your desired width
        height: 50, // Set your desired height
        child: Image.network(
          snapshot.data![index].image!,
          fit: BoxFit.cover, // Adjust the image inside the box
        ),
      ),
      title: Text(
        snapshot.data![index].title ?? '',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(snapshot.data![index].body ?? ''),
          const SizedBox(
            height: 10,
          ),
          Text(timeDifference)
        ],
      ),
    );
  }
}
