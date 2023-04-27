import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_ui/widgets/app_icon.dart';
import 'package:responsive_ui/widgets/row_text.dart';

class HeaderPart2 extends StatelessWidget {
  const HeaderPart2({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
   
     bool isIpad = size.width >= 770 && size.width < 1366;
    return SizedBox(
     // color: Colors.lightBlue,
      height: size.height /1.5,
      //width:size.width*.5 ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            
             padding: const EdgeInsets.all(8),
             decoration: BoxDecoration(
              color: const Color.fromARGB(255, 27, 27, 27),
              borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Bim',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 24.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Graph',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              
              padding: EdgeInsets.all(10),
              child: Row(
                
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // margin: const EdgeInsets.all(10),
                    height: size.height * .47,
                    width: size.width*.17,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/photo.png",
                      
                        // height: size.height*.8,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          RowText(
                            size: size,
                            text1: 'Name:',
                            text2: 'Bhima Sakti',
                          ),
                          Container(
                           // width: 400,
                            //height: 300,
                            // margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                    255, 27, 27, 27),
                                borderRadius:
                                    BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.start,
                              children: [
                                RowText(
                                    size: size,
                                    text1: 'Based in:',
                                    text2: 'Tanjung pinang'),
                                Image.asset(
                                  "assets/images/image1.png",
                                  height: 150,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            
                            //width: size.width/2,
                            // margin: const EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                    255, 27, 27, 27),
                                borderRadius:
                                    BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: const [
                                AppIcon(
                                    icon: FontAwesomeIcons
                                        .linkedinIn,
                                    color: Colors.blue),
                                AppIcon(
                                  icon: FontAwesomeIcons
                                      .dribbble,
                                ),
                                AppIcon(
                                    icon: FontAwesomeIcons
                                        .twitter),
                                AppIcon(
                                    icon: FontAwesomeIcons
                                        .instagram),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


