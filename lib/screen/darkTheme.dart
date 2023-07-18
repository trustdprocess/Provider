import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/screen/provider.dart';
import 'package:provider1/screen/themeprovider.dart';

class DarkTheme extends StatelessWidget {
  const DarkTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Switcher'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Current Theme: Dark',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              themeProvider.toggleTheme();
            },
            child: Text('Toggle Theme'),
          ),
        ],
      ),
    );
  }
}
