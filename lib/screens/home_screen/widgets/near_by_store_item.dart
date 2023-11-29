import 'package:flutter/material.dart';

class NearByStoreItem extends StatelessWidget {
  const NearByStoreItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Image(
                  height: 150, // Set the desired height
                  width: 150,
                  image: AssetImage("assets/bread.jpg"),
                  fit: BoxFit.cover, // Adjust the fit property as needed
                ),
              ),
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Freshly Baker",
                      style: TextStyle(fontSize: 23),
                    ),
                    const Text("Sweets , North Indian"),
                    const Text("Site no- 1 | 6.4 Km"),
                    Container(
                      height: 20,
                      width: 60,
                      decoration: const BoxDecoration(color: Colors.grey),
                      child: const Text(
                        "Top Store",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 40,
            ),
            const Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    Text("4.1"),
                  ],
                ),
                Text(
                  "45 Mins",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        const Divider(),
        const Row(
          children: [
            SizedBox(
              width: 120,
            ),
            Icon(
              Icons.local_offer,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Upto 10% off"),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.book_sharp,
              color: Colors.red,
            ),
            Text("3400 + items available")
          ],
        )
      ],
    );
  }
}
