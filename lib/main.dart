import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mipt_flutter_news/screens/home.dart';
import 'package:mipt_flutter_news/themes/controller.dart';
import 'package:mipt_flutter_news/themes/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeController(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeController>(builder: (contex, theme, child) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: true,
      ));
      return MaterialApp(
        title: 'News',
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        themeMode: theme.mode,
        home: const HomeScreen(),
      );
    });
  }
}
