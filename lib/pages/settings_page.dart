import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal_main/theme/themeprovider.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.dmSerifText(),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          //dark theme
        
         Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Dark Mode",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ),
          ),
        
          //switch toggle
          CupertinoSwitch(
            value:
            Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
            onChanged: (value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
          )
        ]),
      ),
    );
  }
}
