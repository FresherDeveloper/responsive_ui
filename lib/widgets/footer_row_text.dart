import 'package:flutter/material.dart';

class FooterRowText extends StatelessWidget {
  const FooterRowText({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
          child: Text(
            text1,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        FittedBox(
          child: Text(
            text2,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
