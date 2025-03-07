import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/sections/status_section.dart';
import 'package:flutter_application_1/widgets/appBarIcon.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
            fontSize: 23,
            color: const Color.fromARGB(255, 27, 134, 221),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          AppBarIcon(
            buttonAction: () => print("search"),
            iconBtn: Icons.search,
          ),
          AppBarIcon(
            buttonAction: () => print("search"),
            iconBtn: Icons.message,
          ),
        ],
      ),
      body: ListView(
        children: [StatusSection()],
      ),
    );
  }
}
