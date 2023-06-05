import 'package:beep_aplication/widgets/optionMenu.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({super.key});

  final List<dynamic> data = [
    {
      'title': 'Agenda'
    },
    {
      'title': 'Diario'
    },
    {
      'title': 'Metas'
    },
    {
      'title': 'plan de disiplina'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return (Center(
        child: SizedBox(
      width: 300, // Ancho deseado del GridView
      height: 300, // Alto deseado del GridView
      child: GridView.builder(
        itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) {
            return OptionMenu(
                title: data[i]["title"]);
          }),
      ),
    ));
  }
}
