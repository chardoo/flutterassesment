import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptionButton extends StatelessWidget {
  Widget icon;
  Function onPressed;
  Color? color;
  OptionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: () {
        onPressed();
      },
    );
  }
}
