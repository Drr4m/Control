import 'package:flutter/material.dart';
import '../themes/theme.dart';

class InUpButton extends StatelessWidget {
  final Text text;

  const InUpButton({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: AppColors.yellow,
        ),
        padding: EdgeInsets.fromLTRB(
            size.width * 0.085384,
            size.height * 0.013625,
            size.width * 0.085384,
            size.height * 0.013625),
        child: text);
  }
}
