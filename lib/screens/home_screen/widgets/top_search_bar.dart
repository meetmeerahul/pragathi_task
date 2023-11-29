import 'package:flutter/material.dart';
import 'package:pragathi_task/screens/notification_screen/notification_screen.dart';

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 300, // Adjust the width as needed
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    hoverColor: Colors.grey,
                    filled: true, // Fill with grey color
                    fillColor: Colors.grey[300],
                    suffixIcon: const Icon(Icons.search),
                    hintText: 'Search for products/Stores',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NotificationScreen(),
              ),
            ),
            child: const Icon(
              Icons.notifications,
              color: Colors.red,
            ),
          ),
          const Icon(
            Icons.label,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
