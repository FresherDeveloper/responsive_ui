import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/footer_row_text.dart';

class FooterPart1 extends StatelessWidget {
  const FooterPart1({
    super.key,
    required this.size,
    required this.myImages,
  });

  final Size size;
  final List myImages;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 27, 27, 27),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const FooterRowText(text1: "Ui PortFolio", text2: "See All"),
          Expanded(
            child: GridView.builder(
              itemCount: myImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        myImages[index],
                        height: 100,
                      )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
