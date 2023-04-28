import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_ui/service/app_service.dart';

class HeaderPart1 extends StatelessWidget {
  const HeaderPart1({
    super.key,
    required this.size,
    this.myList,
  });

  final Size size;
  final List<Map<String, dynamic>>? myList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 1.5,
      width: size.width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 27, 27, 27),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FittedBox(
                  child: Text(
                    "Bringing Your Ideas\nTo Life Through\nUi Design",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(66, 199, 64, 226))),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("Hire Me"),
                          const SizedBox(
                            width: 5,
                          ),
                          Transform.rotate(
                              angle: -45 * 0.0174533, // -45 degrees in radians

                              child: const FaIcon(
                                FontAwesomeIcons.hand,
                                color: Color.fromARGB(255, 255, 222, 59),
                              )),
                        ],
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FutureBuilder(
                    future: AppService().loadData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final data = snapshot.data!;
                        final headerList = data.headerList!;
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: headerList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final header = headerList[index];
                            final color = Color(int.parse(
                                    header.color!.replaceAll('#', ''),
                                    radix: 16) +
                                0xFF000000);

                            final textColor = Color(int.parse(
                                    header.textColor!.replaceAll('#', ''),
                                    radix: 16) +
                                0xFF000000);

                            return FittedBox(
                              child: Container(
                                height: size.height * 0.4,
                                width: size.width * 0.25,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        header.text1!,
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize: 40,
                                        ),
                                      ),
                                    ),
                                    FittedBox(
                                      child: Text(
                                        header.text2!,
                                        style: TextStyle(
                                          color: textColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text("Error: ${snapshot.error}"),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  //  GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  //   itemCount: myList.length,
                  //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 3,
                  //     mainAxisSpacing: 10.0,
                  //     crossAxisSpacing: 10.0,
                  //   ),
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return FittedBox(
                  //       child: Container(
                  //           height:size.height * 0.4,
                  //           width:size.width * 0.25,
                  //           padding: EdgeInsets.all(10),
                  //           decoration: BoxDecoration(
                  //               color: myList[index]["color"],
                  //               borderRadius: BorderRadius.circular(10)),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               FittedBox(
                  //                 child: Text(
                  //                   "${myList[index]["text1"]}",
                  //                   style: TextStyle(
                  //                       color: myList[index]["textColor"],
                  //                       fontSize: 40),
                  //                 ),
                  //               ),
                  //               FittedBox(
                  //                 child: Text(
                  //                   "${myList[index]["text2"]}",
                  //                   style: TextStyle(

                  //                     color: myList[index]["textColor"],
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           )),
                  //     );
                  //   },
                  // ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
