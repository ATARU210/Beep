import 'package:flutter/material.dart';
import 'package:beep_aplication/constants/colors.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class BeepFloatingButton extends StatelessWidget{
  const BeepFloatingButton({super.key});

  @override
  Widget build(BuildContext context){
    return Positioned(
        bottom: 20,
        right: 20,
        child: FloatingActionButton(onPressed: ()=> {changeScreen(context, 2)}, backgroundColor: TextColor.extraColor, child: const Icon(Icons.add),));
  }

  void changeScreen(BuildContext context, int value) {
    Provider.of<ScreenProvider>(context, listen: false).setScreen(value);
  }

}

