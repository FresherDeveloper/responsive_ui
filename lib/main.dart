import 'package:flutter/material.dart';
import 'package:responsive_ui/view/desktop_view.dart';
import 'package:responsive_ui/view/home.dart';
import 'package:responsive_ui/view/ipad_view.dart';
import 'package:responsive_ui/view/mobile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(
        mobile: MobileView(),
        iPad: IpadView(),
        desktop: Desktop(),
      ),
    );
  }
}
