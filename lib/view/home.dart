import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home(
      {super.key,
      required this.mobile,
      required this.iPad,
      required this.desktop});
  final Widget mobile;
  final Widget iPad;
  final Widget desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 501) {
        return mobile;
      } else if (constraints.maxWidth < 1200) {
        return iPad;
      } else {
        return desktop;
      }
    });
  }
}
