import 'package:flutter/material.dart';
import '../themes/theme.dart';

class MyTextField extends StatelessWidget {
  final String text;
  const MyTextField({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: TextField(
          style: TextStyle(color: AppColors.white),
          decoration: textFieldStyle.copyWith(labelText: text),
        ),
      ),
    );
  }
}
