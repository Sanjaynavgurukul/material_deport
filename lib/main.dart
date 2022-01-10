import 'package:flutter/material.dart';
import 'package:material_depo/controller/app_router.dart';
import 'package:material_depo/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
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
