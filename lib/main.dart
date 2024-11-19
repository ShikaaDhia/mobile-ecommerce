import 'package:floapp/consts.dart';
import 'package:floapp/settings/settings_screen.dart';
import 'package:floapp/state-management/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      // placeholder untk template provider yang belum ter
      create: (_) => ThemeProvider(),
      child: const FloApp()
    )
  );
}

class FloApp extends StatefulWidget {
  const FloApp({super.key});

  @override
  State<FloApp> createState() => FloApp();
}

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider) { 
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        // untuk mengetahui ini tuh app apa sih
        title: 'Clothlon', 
        // mengeset thema apakah dia dark atau light
        theme: ThemeData(
          brightness: themeProvider.isDarkTheme ? Brightness.dark : Brightness.light,
          scaffoldBackgroundColor: themeProvider.isDarkTheme ? Colors.black : Colors.white,
          fontFamily: 'Muli',
          // buat responsive
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // kita bisa memodify text nya seperti apa
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: textColor),
            bodySmall: TextStyle(color: textColor),
          )
        ),
        home: const SettingsScreen(),
      );
       },
      
    );
  }
