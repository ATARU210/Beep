import 'package:beep_aplication/constants/colors.dart';
import 'package:beep_aplication/widgets/floatingButton.dart';
import 'package:beep_aplication/widgets/listItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              children: [
                Flex(direction: Axis.horizontal, children: [
                  InkWell(
                      onTap: () {
                        changeScreen(context, 0);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: TextColor.extraColor,
                        size: 40,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Tareas Diarias",
                    style: TextStyle(color: TextColor.extraColor, fontSize: 18),
                  )
                ],
                ),
                const ListItems(title: "Limpiar la casa"),
                const ListItems(title: "Limpiar la casa"),
                const ListItems(title: "Limpiar la casa"),
                const ListItems(title: "Limpiar la casa"),

              ],
            ),
            const BeepFloatingButton()
          ],
        ));
  }

  void changeScreen(BuildContext context, int value) {
    Provider.of<ScreenProvider>(context, listen: false).setScreen(value);
  }

}
