import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/themes/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/ui/InUpButton.dart';

final changeLanguage = StateProvider((ref) => 0);

class SalePage extends ConsumerStatefulWidget {
  const SalePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SalePageState();
}

class _SalePageState extends ConsumerState<SalePage> {
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
                  SvgPicture.asset(
                    "assets/images/burger.svg",
                    semanticsLabel: "menu",
                    width: size.width * Correlation.width * 28,
                  ),
                  Text(
                    l10n.saleTitle,
                    style: text20bold.copyWith(color: AppColors.white),
                  ),
                  SvgPicture.asset(
                    "assets/images/basket.svg",
                    semanticsLabel: "basket",
                    width: size.width * Correlation.width * 28,
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                height: 30,
                color: AppColors.yellow,
              ),
              Row(children: [
                Expanded(
                  child: TextField(
                    style: text14.copyWith(color: AppColors.white),
                    decoration: InputDecoration(
                      focusColor: AppColors.grey,
                      hoverColor: AppColors.grey,
                      contentPadding:
                          EdgeInsets.all(size.width * Correlation.width * 12),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(
                          "assets/images/search.svg",
                          semanticsLabel: "search",
                        ),
                      ),
                      prefixIconConstraints: BoxConstraints(
                          minWidth: size.width * Correlation.width * 20),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: AppColors.grey,
                      hintText: l10n.search,
                      hintStyle: const TextStyle(color: AppColors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: SvgPicture.asset(
                    "assets/images/favouritesButton.svg",
                    semanticsLabel: "favourites",
                    width: size.width * Correlation.width * 28,
                  ),
                ),
              ]),
              Expanded(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 110,
                            child: Text(
                                'datadatadatadatadatadatadatadatadatadata'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 110,
                            child: Text(
                                'datadatadatadatadatadatadatadatadatadata'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 110,
                            child: Text(
                                'datadatadatadatadatadatadatadatadatadata'),
                          ),
                        ),
                      ),
                    ],
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
