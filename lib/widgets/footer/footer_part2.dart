import 'package:flutter/material.dart';
import 'package:responsive_ui/model/model.dart';
import 'package:responsive_ui/service/app_service.dart';
import 'package:responsive_ui/widgets/footer_row_text.dart';

class FooterPart2 extends StatelessWidget {
  const FooterPart2({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
     bool isMobile=size.width<460;
    return FutureBuilder<AppData>(
      future: AppService().loadData(),
      builder: (BuildContext context, AsyncSnapshot<AppData> snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }
        final portfolioDetail = snapshot.data!.portfolioDetail;

        return Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 27, 27, 27),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FooterRowText(text1: "About", text2: "Resume"),
              Expanded(
                child: FittedBox(
                  child: SizedBox(
                    width: !isMobile ? size.width * .22 : size.width,
                    child: Text(
                      portfolioDetail!,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
    //  Container(
    //   padding: const EdgeInsets.all(10.0),
    //    decoration: BoxDecoration(
    //     color: const Color.fromARGB(255, 27, 27, 27),
    //     borderRadius: BorderRadius.circular(10)),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
      
    //     children: [
    //       const FooterRowText(text1: "About", text2: "Resume"),
    //         Expanded(
    //           child: FittedBox(
    //             child: SizedBox(
    //               width: !isMobile? size.width*.22:size.width,
    //               child: const Text("I am a UI designer with a passion for creating intuitive and visually appealing user interfaces. I have a strang understanding of design principles and work closely with developers to bring my designs to life I have had the opportunity to work with a variety of clients of a studio and am always striving to improve my skills and stay up- to-dare on the latest design trends",
                   
    //                style: TextStyle(color: Colors.white),),
    //             ),
    //           ),
    //         )
    //     ],
    //   ));
  }
}

