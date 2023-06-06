import 'package:beep_aplication/constants/colors.dart';
import 'package:flutter/material.dart';

class OptionMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const OptionMenu({super.key, required this.title, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(color: TextColor.extraColor, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          Icon(
            icon,
            color: TextColor.extraColor,
            size: 80,
          )
        ],
      ),
    );
  }
}
