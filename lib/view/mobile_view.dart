import 'package:flutter/material.dart';

import 'package:responsive_ui/widgets/footer/footer_part2.dart';

import 'package:responsive_ui/widgets/footer/mobile_footer/mobile_footer.dart';
import 'package:responsive_ui/widgets/header/mobile_header/mobile_header1.dart';
import 'package:responsive_ui/widgets/header/mobile_header/mobile_header2.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
     
    final size = MediaQuery.of(context).size;
   
    print("Mobile view:$size");
    List myImages = [
      "assets/images/image2.png",
      "assets/images/image3.png",
      "assets/images/image4.png"
    ];
    List<Map<String, dynamic>> myList = [
      {
        "text1": "2+",
        "color": const Color.fromARGB(255, 76, 175, 80),
        "text2": "Years Experience",
        "textColor": Colors.white
      },
      {
        "text1": "54+",
        "color": Colors.amber,
        "text2": "Handled Project",
        "textColor": Colors.black
      },
      {
        "text1": "40+",
        "color": Colors.redAccent,
        "text2": "Clients",
        "textColor": Colors.white
      },
    ];
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                 
                    height: size.height * .35,
                    child: MobileHeader1(size: size, myList: myList)),
                    
                MobileHeader2(size: size),
                Expanded(
                    flex: 3,
                    child: MobileFooter1(size: size, myImages: myImages)),
                    SizedBox(height: 10,),
                Expanded(flex: 2, child: FooterPart2(size: size)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
