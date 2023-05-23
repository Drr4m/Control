import 'package:control/core/ui/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/themes/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/ui/InUpButton.dart';

final changeLanguage = StateProvider((ref) => 0);

class SignUpSecondPage extends ConsumerStatefulWidget {
  const SignUpSecondPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpSecondPageState();
}

class _SignUpSecondPageState extends ConsumerState<SignUpSecondPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final l10n = AppLocalizations.of(context);
    print(size.height);
    print(size.width);

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1184834),
                Center(
                  child: SvgPicture.asset(
                    "assets/images/logo.svg",
                    semanticsLabel: "Logo",
                    width: size.width * 0.19231,
                  ),
                ),
                SizedBox(height: size.height * 0.1184834),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(
                      size.width * 0.130769, 0, size.width * 0.130769, 0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.create,
                              style: text23.copyWith(color: AppColors.white),
                            ),
                            Text(
                              l10n.logAndPass,
                              style: text23.copyWith(color: AppColors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                                onPressed: () {},
                                child: Text(
                                  l10n.signIn,
                                  style:
                                      text18.copyWith(color: AppColors.yellow),
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.022),
                    Row(
                      children: [MyTextField(text: l10n.login)],
                    ),
                    Row(
                      children: [MyTextField(text: l10n.password)],
                    ),
                    Row(
                      children: [MyTextField(text: l10n.confirmPassword)],
                    ),
                    SizedBox(height: size.height * 0.067535),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InUpButton(
                          text: Text(l10n.nextButton,
                              style:
                                  text20bold.copyWith(color: AppColors.white)),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
