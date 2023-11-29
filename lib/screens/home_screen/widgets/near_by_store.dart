import 'package:flutter/material.dart';
import 'package:pragathi_task/screens/home_screen/widgets/near_by_store_item.dart';

class NearByStore extends StatefulWidget {
  const NearByStore({super.key});

  @override
  State<NearByStore> createState() => _NearByStoreState();
}

class _NearByStoreState extends State<NearByStore> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NearByStoreItem(),
        SizedBox(
          height: 50,
        ),
        NearByStoreItem(),
      ],
    );
  }
}
