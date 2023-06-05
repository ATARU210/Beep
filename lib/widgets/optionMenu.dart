import 'package:beep_aplication/constants/colors.dart';
import 'package:flutter/material.dart';

class OptionMenu extends StatelessWidget {

  final String title;
  const OptionMenu({super.key, this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: FontColors.extraColor,
      ),
      child: Center(
        child: Text(title, style: const TextStyle(color: TextColor.extraColor), textAlign: TextAlign.center,
        ),
      ),
    );
  }
}