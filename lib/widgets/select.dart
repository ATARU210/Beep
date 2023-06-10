import 'package:beep_aplication/constants/colors.dart';
import 'package:flutter/material.dart';


class BeepSelect extends StatefulWidget{
  BeepSelect ({super.key, required this.selectedOption, required this.items, required this.label});

  var items = <String>[];
  final String selectedOption;
  final String label;

  @override
  _BeepSelectState createState() => _BeepSelectState(selectedOption: selectedOption, items: items, label: label);
}

class _BeepSelectState extends State<BeepSelect> {
  _BeepSelectState ({required this.selectedOption, required this.items, required this.label});

  var items = <String>[];
  final String label;
  String selectedOption;


  @override
  Widget build(BuildContext context) {
    return InputDecorator(
              decoration:  InputDecoration(
                  labelStyle: const TextStyle(color: TextColor.extraColor),
                  labelText: label,
                  border: InputBorder.none// Borde del InputDecorator
              ),
              child: DropdownButton<String>(
                focusColor: TextColor.extraColor,
                iconEnabledColor: TextColor.extraColor,
                underline: Container(
                  // Cambia el color de la línea inferior
                  height: 2,
                  color: TextColor.extraColor,
                ),
                style:  const TextStyle(color: TextColor.extraColor),
                value: selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
                items: [
                  'Notificacion',
                  '5 segundos',
                  '10 segundos',
                  "15 segundos",
                  "30 segundos",
                  "1 minuto",
                  "2 minutos"
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
    ));
  }
}