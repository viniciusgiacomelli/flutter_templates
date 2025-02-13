import 'package:flutter/material.dart';

class ContactSession extends StatelessWidget {
  const ContactSession({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height,
      color: Colors.yellowAccent,
    );
  }
}
