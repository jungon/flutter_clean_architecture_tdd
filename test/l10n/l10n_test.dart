import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  BuildContext _context;

  testWidgets('Get Locale', (tester) async {
    // Locale myLocale = Localizations.localeOf(_key.currentContext);
    await tester.pumpWidget(
      MaterialApp(
        title: 'Locale Test',
        builder: (context, widget) {
          _context = context;
          return Container();
        },
      ),
    );

    expect(_context, isNotNull);

    Locale myLocale = Localizations.localeOf(_context);
    print('$myLocale');

    var locales = [const Locale('en', 'US'), const Locale('ko', 'KR')];
    print('${locales.map((l) => l.toString()).contains('en_US')}');
  });
}
