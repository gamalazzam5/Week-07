import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;

  const CustomContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
      ),
    );
  }
}
