import 'package:control/SignIn/signIn.dart';
import 'package:control/l10n/all_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final changeLanguage = StateProvider((ref) => 1);
void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeIndex = ref.watch(changeLanguage);
    return MaterialApp(
      locale: AppLocalizations.supportedLocales[localeIndex],
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AllLocale.all,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Comfortaa',
        scaffoldBackgroundColor: const Color(0xFF292929),
      ),
      home: SignInPage(),
    );
  }
}
