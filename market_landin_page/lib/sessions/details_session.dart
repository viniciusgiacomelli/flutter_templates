import 'package:flutter/material.dart';

class DetailsSession extends StatelessWidget {
  const DetailsSession({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height,
      color: Colors.pink,
    );
  }
}
