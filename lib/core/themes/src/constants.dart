part of '../theme.dart';

const text23 = TextStyle(fontWeight: FontWeight.w400, fontSize: 23);
const text20 = TextStyle(fontWeight: FontWeight.w400, fontSize: 20);
const text20bold = TextStyle(fontWeight: FontWeight.w700, fontSize: 20);
const text18 = TextStyle(fontWeight: FontWeight.w400, fontSize: 18);

abstract class AppColors {
  static const white = Colors.white;
  static const black = Color.fromRGBO(41, 41, 41, 1);
  static const yellow = Color.fromRGBO(255, 204, 22, 1);
  static const red = Color.fromRGBO(235, 55, 55, 1);
}

const textFieldStyle = InputDecoration(
    border: InputBorder.none,
    labelStyle: TextStyle(color: AppColors.yellow),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.yellow, width: 4)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.yellow, width: 4)),
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.yellow, width: 4)),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.red, width: 4)));
