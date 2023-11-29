import 'package:flutter/material.dart';

class TrendingGrid extends StatelessWidget {
  const TrendingGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(children: [
                TrendingWidget(),
                TrendingWidget(),
              ]),
              Row(
                children: [
                  TrendingWidget(),
                  TrendingWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/icecream.jpg"),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mitas Bandhar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text("Sweets North indian"),
              Text("(Store location | 6.4 km)"),
              Text(" * 4.1 | 45 mins")
            ],
          )
        ],
      ),
    );
  }
}
