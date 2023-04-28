import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/footer/footer_part1.dart';
import 'package:responsive_ui/widgets/footer/footer_part2.dart';
import 'package:responsive_ui/widgets/header/header_part1.dart';
import 'package:responsive_ui/widgets/header/ipad_header/ipad_header.dart';

class IpadView extends StatelessWidget {
  const IpadView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    log("Ipad view:$size");
    List myImages = [
      "assets/images/image2.png",
      "assets/images/image3.png",
      "assets/images/image4.png"
    ];
    // List<Map<String, dynamic>> myList = [
    //   {
    //     "text1": "2+",
    //     "color": const Color.fromARGB(255, 76, 175, 80),
    //     "text2": "Years Experience",
    //     "textColor": Colors.white
    //   },
    //   {
    //     "text1": "54+",
    //     "color": Colors.amber,
    //     "text2": "Handled Project",
    //     "textColor": Colors.black
    //   },
    //   {
    //     "text1": "40+",
    //     "color": Colors.redAccent,
    //     "text2": "Clients",
    //     "textColor": Colors.white
    //   },
    // ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Container(
              width: size.width,
              height: size.height,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderPart1(
                        size: size,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: IpadHeader2(size: size),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FooterPart1(size: size, myImages: myImages),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: FooterPart2(size: size),
                          )
                        ]),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
