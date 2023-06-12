import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/themes/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:control/core/ui/productInBasket.dart';
import '../../core/ui/InUpButton.dart';

final changeLanguage = StateProvider((ref) => 0);

class BasketPage extends ConsumerStatefulWidget {
  const BasketPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BasketPageState();
}

class _BasketPageState extends ConsumerState<BasketPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * Correlation.width * 20,
                size.height * Correlation.height * 40,
                size.width * Correlation.width * 20,
                size.height * Correlation.height * 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    width: size.width * Correlation.width * 58,
                    child: SvgPicture.asset(
                      "assets/images/backArrow.svg",
                      semanticsLabel: "back",
                      width: size.width * Correlation.width * 12,
                    ),
                  ),
                  Text(
                    l10n.busketTitle,
                    style: text20bold.copyWith(color: AppColors.white),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/discount.svg",
                        semanticsLabel: "discount",
                        width: size.width * Correlation.width * 25,
                      ),
                      SizedBox(width: size.width * Correlation.width * 20),
                      SvgPicture.asset(
                        "assets/images/delete.svg",
                        semanticsLabel: "delete",
                        width: size.width * Correlation.width * 24,
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                height: 30,
                color: AppColors.yellow,
              ),
              ProductInBasket(),
              Expanded(
                  child: Column(
                children: [
                  Row(
                    children: [],
                  )
                ],
              )),
              GestureDetector(
                onTap: () {
                  print("Tapped");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.yellow,
                      border: Border.all(color: AppColors.yellow),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  padding: EdgeInsets.all(size.width * Correlation.width * 25),
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            l10n.buyBotton.toUpperCase(),
                            style: text20bold.copyWith(color: AppColors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: SvgPicture.asset(
                              "assets/images/arrow.svg",
                              semanticsLabel: "arrow",
                              width: size.width * Correlation.width * 11,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "426 ₽",
                        style: text20bold.copyWith(color: AppColors.black),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
