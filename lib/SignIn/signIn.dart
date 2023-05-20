import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/themes/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: size.height * 0.118484),
          Center(
            child: SvgPicture.asset(
              "assets/images/logo.svg",
              semanticsLabel: "Logo",
              width: size.width * 0.19231,
            ),
          ),
          SizedBox(height: size.height * 0.189573),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(
                size.width * 0.130769, 0, size.width * 0.130769, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.signIn,
                  style: text23.copyWith(color: AppColors.white),
                ),
                Text(
                  l10n.signUp,
                  style: text18.copyWith(color: AppColors.yellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
