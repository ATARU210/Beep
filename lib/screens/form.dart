import 'package:beep_aplication/widgets/Input.dart';
import 'package:beep_aplication/widgets/checkBox.dart';
import 'package:beep_aplication/widgets/select.dart';
import 'package:beep_aplication/widgets/submit.dart';
import 'package:flutter/material.dart';



class BeepForm extends StatelessWidget {

  const BeepForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const BeepInput(label: "Titulo"),
          const BeepInput(label: "Descripcion"),
          BeepSelect(selectedOption: "Notificacion", items: const ["Notificacion"], label: "Duracion"),
          BeepSelect(selectedOption: "Minutos", items: const ["Minutos"], label: "Intervalos"),
          const BeepCheckBox(title: "Notificaciones"),
          const BeepCheckBox(title: "Sonido"),
          const BeepCheckBox(title: "Vibracion"),
          const BeepCheckBox(title: "Desactivable"),
          const BeepCheckBox(title: "Activo"),
          const SizedBox(height: 16.0),
          const BeepSubmit()
        ],
      ),
    );
  }
}
