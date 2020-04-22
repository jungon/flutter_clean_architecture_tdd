import 'package:clean_architecture_tdd_course/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'package:flutter/material.dart';

import 'app_localizations.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        accentColor: Colors.green.shade600,
      ),
      localizationsDelegates: localizationsDelegate,
      supportedLocales: supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        Locale supportedLocale = supportedLocales.firstWhere((supportedLocale) {
          return supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode;
        });
        return supportedLocale ?? supportedLocales.first;
      },
      home: NumberTriviaPage(),
    );
  }
}
