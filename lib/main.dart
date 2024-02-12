import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/journal_entry.dart';
import 'theme/themeprovider.dart';

void main() async {
  //initialize not isar database
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Journal(),
      theme: Provider.of<ThemeProvider>(context).themedata,
    );
  }
}
