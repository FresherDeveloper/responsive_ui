import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key, required this.icon, this.color=const Color.fromARGB(255, 57, 56, 56),
  });
 
 final Color? color;
 final IconData icon;
  
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 40,
     width: 40,
    decoration: BoxDecoration(
                           color:color,
                           borderRadius: BorderRadius.circular(30)),
                           //padding: EdgeInsets.all(10),
     child: Center(child:  FaIcon(icon,color:Colors.white)));
  }
}