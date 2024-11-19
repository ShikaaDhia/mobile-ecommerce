import 'package:floapp/state-management/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Center(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0, // biar ga ada bayangan
          title: const Center(
            child: Text('Settings')
            ),
          actions: [
            IconButton(
              onPressed: () {  
              themeProvider.toggleTheme(!themeProvider.isDarkTheme);
              },
              icon: Icon(
                themeProvider.isDarkTheme ? Icons.dark_mode : Icons.light_mode,
                color: themeProvider.isDarkTheme ? Colors.white : Colors.black,
              )
              )
          ],
        ),
        body: const Center(
          
        ),
      ),
    );
  }
}