import 'package:control/core/themes/theme.dart';
import 'package:flutter/material.dart';

class ProductInBasket extends StatelessWidget {
  const ProductInBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.yellow),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "1.  Напиток Добрый Cola",
                  style: text18bold.copyWith(color: AppColors.yellow),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Column(
                children: [
                  Text(
                    "196, 00",
                    style: text20bold.copyWith(color: AppColors.yellow),
                  ),
                  Text(
                    "98,00 х 2",
                    style: text14.copyWith(color: AppColors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
