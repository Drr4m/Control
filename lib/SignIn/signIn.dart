import 'package:control/core/ui/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/themes/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../core/ui/InUpButton.dart';

final changeLanguage = StateProvider((ref) => 0);

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final l10n = AppLocalizations.of(context);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.118484),
              Center(
                child: SvgPicture.asset(
                  "assets/images/logo.svg",
                  semanticsLabel: "Logo",
                  width: size.width * 0.19231,
                ),
              ),
              SizedBox(height: size.height * 0.154028),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(
                    size.width * 0.130769, 0, size.width * 0.130769, 0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.signIn,
                        style: text23.copyWith(color: AppColors.white),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                          onPressed: () {},
                          child: Text(
                            l10n.signUp,
                            style: text18.copyWith(color: AppColors.yellow),
                          )),
                    ],
                  ),
                  SizedBox(height: size.height * 0.033),
                  Row(
                    children: [MyTextField(text: l10n.login)],
                  ),
                  SizedBox(height: size.height * 0.035545),
                  Row(
                    children: [MyTextField(text: l10n.password)],
                  ),
                  SizedBox(height: size.height * 0.067535),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InUpButton(
                          text: Text(l10n.enterButton,
                              style:
                                  text20bold.copyWith(color: AppColors.white))),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
