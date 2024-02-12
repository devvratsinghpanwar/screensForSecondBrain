import 'package:flutter/material.dart';
import 'package:journal_main/components/drawer_tile.dart';
import 'package:journal_main/pages/settings_page.dart';
import 'package:journal_main/pages/journal_entry.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        const Padding(
          padding:  EdgeInsets.only(left: 8.0),
          child:  DrawerHeader(
            child: Icon(Icons.edit),
          ),
        ),
        //notes tile

        DrawerTile(
          title: 'Notes',
          leading: const Icon(Icons.home),
          onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Journal(),
                  ));
            }
        ),

        DrawerTile(
            title: 'Settings',
            leading: const Icon(Icons.settings),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ));
            }),
      ]),
    );
  }
}
