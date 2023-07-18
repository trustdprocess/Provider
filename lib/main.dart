import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/screen/darkTheme.dart';
import 'package:provider1/screen/provider.dart';
import 'package:provider1/screen/themeprovider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Switcher',
      theme: Provider.of<ThemeProvider>(context).getThemeData,
      home: DarkTheme(),
    );
  }
}
