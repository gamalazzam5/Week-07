import 'package:flutter/material.dart';

import 'home_page.dart';

void main ()=>runApp(const Task2());

class Task2  extends StatelessWidget{
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

