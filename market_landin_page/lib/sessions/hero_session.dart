import 'package:flutter/material.dart';

class HeroSession extends StatelessWidget {
  const HeroSession({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height,
      color: Colors.blue,
    );
  }
}
