import 'package:beep_aplication/constants/colors.dart';
import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: FontColors.extraColor,
          ),
          width: double.infinity,
          height: 100,
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: TextColor.extraColor, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
