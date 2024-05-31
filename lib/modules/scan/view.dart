import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ScanPage extends StatelessWidget {
  ScanPage({super.key});

  final logic = Get.put(ScanLogic());
  final state = Get.find<ScanLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Scan Barcode",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.image_outlined),
            )
          ],
        ),
        body: Center(
          child: Container(
            width: 220,
            height: 220,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/png/scan.png"))),
          ),
        ));
  }
}
