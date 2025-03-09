import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
    required this.iconBtn,
    required this.buttonAction,
  });

  final IconData iconBtn;
  final VoidCallback buttonAction; // Correct function type

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      margin: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(55, 158, 158, 158),
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(iconBtn,
            color: Colors.black), // Using IconData instead of IconButton
      ),
    );
  }
}
