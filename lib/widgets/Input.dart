import 'package:beep_aplication/constants/colors.dart';
import 'package:flutter/material.dart';

class BeepInput extends StatefulWidget {
  const BeepInput({super.key, required this.label});

  final String label;

  @override
  _BeepInputState createState() => _BeepInputState(label: label);
}

class _BeepInputState extends State<BeepInput> {
  _BeepInputState ({required this.label});

  TextEditingController textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  final String label;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    textController.dispose();
    super.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      cursorColor: FontColors.extraColor,
      controller: textController,
      decoration: InputDecoration(
        labelStyle: TextStyle(
            color: _isFocused ? FontColors.extraColor : TextColor.extraColor),
        focusColor: FontColors.extraColor,
        border: const UnderlineInputBorder(
            borderSide: BorderSide(color: TextColor.extraColor)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: FontColors.extraColor)),
        labelText: label,
      ),
      style: TextStyle(color: _isFocused ? FontColors.extraColor :TextColor.extraColor),
    );
  }
}
