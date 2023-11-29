import 'package:flutter/material.dart';
import 'package:pragathi_task/constants/service_names.dart';
import 'package:pragathi_task/screens/home_screen/widgets/service.dart';

class ServiceGrid extends StatelessWidget {
  const ServiceGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  index == 0 || index == 1 || index == 2 || index == 7
                      ? Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            "10% off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ))
                      : const Text(""),
                  SizedBox(
                    //height: 40,
                    width: 80,
                    child: Center(
                      child: Service(
                        index: index,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              serviceNames[index].toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        );
      },
    );
  }
}
