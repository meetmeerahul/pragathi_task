import 'package:flutter/material.dart';

class CrazyDealsWidget extends StatelessWidget {
  const CrazyDealsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      margin: const EdgeInsets.all(4.0),
      child: const Padding(
        padding: EdgeInsets.only(top: 30.0, left: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Customer Favourite",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text("Top Supermarkets",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Explore Now ->",
                      style: TextStyle(
                          color: Colors.yellow, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Image(
                height: 100, width: 175, image: AssetImage("assets/vegie.png"))
          ],
        ),
      ),
    );
  }
}
