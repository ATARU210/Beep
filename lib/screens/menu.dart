import 'package:beep_aplication/main.dart';
import 'package:beep_aplication/screens/list.dart';
import 'package:beep_aplication/widgets/optionMenu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: SizedBox(
        width: 350, // Ancho deseado del GridView
        height: 350, // Alto deseado del GridView
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            InkWell(
                onTap: () {},
                child: const OptionMenu(
                    title: "Agenda",
                    icon: Icons.calendar_month_outlined,
                    color: Color(0xFF411E9D))),
            InkWell(
                onTap: ()=> changeScreen(context, 1),
                child: const OptionMenu(
                    title: "Diario",
                    icon: Icons.access_alarm_outlined,
                    color: Color(0xFF2E0C8A))),
            InkWell(
                onTap: () {},
                child: const OptionMenu(
                    title: "Metas",
                    icon: Icons.flag,
                    color: Color(0xFF210577))),
            InkWell(
                onTap: () {},
                child: const OptionMenu(
                    title: "Plan de disciplina",
                    icon: Icons.bar_chart_outlined,
                    color: Color(0xFF0E0163))),
          ],
        ),
      ),
    ));
  }

  void changeScreen(BuildContext context, int value) {
    Provider.of<ScreenProvider>(context, listen: false).setScreen(value);
  }
}
