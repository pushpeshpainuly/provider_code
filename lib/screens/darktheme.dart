import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../provider/darkthemeprovider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('darktheme'),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('light theme'),
              value: ThemeMode.light,
              groupValue: themechanger.themeMode,
              onChanged: themechanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('dark theme'),
              value: ThemeMode.dark,
              groupValue: themechanger.themeMode,
              onChanged: themechanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('system theme'),
              value: ThemeMode.system,
              groupValue: themechanger.themeMode,
              onChanged: themechanger.setTheme)
        ],
      ),
    );
  }
}
