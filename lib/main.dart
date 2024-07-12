import 'package:flutter/material.dart';
import 'package:spotbro/navbar.dart';
import 'package:spotbro/localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Locale? locale = getLocale('tr');

    return MaterialApp(
      title: 'SpotBro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      locale: locale,
      supportedLocales: getSupportedLocales(),
      localizationsDelegates: getLocalizationsDelegates(),
      home: const NavigationBarApp(),
    );
  }
}
