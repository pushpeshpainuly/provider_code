import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstatemanagement/provider/LoginPageProvider.dart';
import 'package:providerstatemanagement/provider/count_provider.dart';
import 'package:providerstatemanagement/provider/darkthemeprovider.dart';
import 'package:providerstatemanagement/provider/exampleoneprovider.dart';
import 'package:providerstatemanagement/provider/favouriteprovider.dart';
import 'package:providerstatemanagement/screens/NotifyListnerScreen.dart';
import 'package:providerstatemanagement/screens/countexample.dart';
import 'package:providerstatemanagement/screens/darktheme.dart';
import 'package:providerstatemanagement/screens/exampletwo.dart';
import 'package:providerstatemanagement/screens/favourite/favoiritescreen.dart';
import 'package:providerstatemanagement/screens/loginpage.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteController()),
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
          ChangeNotifierProvider(create: (_) => LoginProvider()),
        ],
        child: Builder(builder: (context) {
          final themechanger = Provider.of<ThemeProvider>(context);

          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(brightness: Brightness.light),
              darkTheme: ThemeData(brightness: Brightness.dark),
              themeMode: themechanger.themeMode,
              home: LoginScreen());
        }));
  }
}
