import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BeepSubmit extends StatelessWidget{
  const BeepSubmit({super.key});


  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
                  (states) => FontColors.extraColor)),
      onPressed: () {
        // Acción al enviar el formulario
      },
      child: const Text(
        'Submit',
        style: TextStyle(color: TextColor.extraColor),
      ),
    );
  }
}