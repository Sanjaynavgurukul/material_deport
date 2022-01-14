import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:material_depo/controller/app_router.dart';
import 'package:material_depo/theme/theme_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(isLightTheme: true),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Zero To Unicorn',
      debugShowCheckedModeBanner: false,
      theme: themeProvider.getThemeData,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
