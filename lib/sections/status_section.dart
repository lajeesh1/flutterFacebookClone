import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          trump,
          width: 45,
          height: 45,
          fit: BoxFit.cover,
        ),
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          border: null,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
