import 'package:control/l10n/all_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final changeLanguage = StateProvider((ref) => 0);
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final language = AppLocalizations.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(language.signIn),
        ),
        body: Column(
          children: [
            Text(language.signUp),
            Row(
              children: [
                FloatingActionButton(
                  child: const Text("EN"),
                  onPressed: () {
                    ref.read(changeLanguage.notifier).update((state) => 0);
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: const Text("RU"),
                  onPressed: () {
                    ref.read(changeLanguage.notifier).update((state) => 1);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
