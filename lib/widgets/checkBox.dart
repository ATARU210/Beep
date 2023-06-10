import 'package:flutter/material.dart';
import 'package:beep_aplication/constants/colors.dart';

class BeepCheckBox extends StatefulWidget{
  const BeepCheckBox({ super.key, required this.title});

  final String title;

  @override
  _BeepCheckBoxState createState() => _BeepCheckBoxState(title: title);
}

class _BeepCheckBoxState extends State<BeepCheckBox>{
  _BeepCheckBoxState({required this.title});

  final String title;
  bool isChecked = false;

  @override
  Widget build(BuildContext context){
    return CheckboxListTile(
      activeColor: TextColor.extraColor,
      title:  Text(
        title,
        style: const TextStyle(color: TextColor.extraColor),
      ),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}