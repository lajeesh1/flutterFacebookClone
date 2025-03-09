import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderButtonSection extends StatelessWidget {
  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );

  HeaderButtonSection({super.key});

  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
        onPressed: buttonAction,
        label: Text(buttonText),
        icon: Icon(
          buttonIcon,
          color: buttonColor,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonText: "Live",
            buttonIcon: Icons.video_call,
            buttonAction: () {
              print("test");
            },
            buttonColor: Colors.red,
          ),
          verticalDivider,
          headerButton(
            buttonText: "Photo",
            buttonIcon: Icons.photo_album,
            buttonAction: () {
              print("test");
            },
            buttonColor: Colors.blue,
          ),
          verticalDivider,
          headerButton(
            buttonText: "Room",
            buttonIcon: Icons.chat_bubble,
            buttonAction: () {
              debugPrint("test");
            },
            buttonColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
