import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mipt_flutter_news/domain/state/favorite.dart';
import 'package:mipt_flutter_news/domain/state/news.dart';
import 'package:mipt_flutter_news/internal/init.dart';
import 'package:mipt_flutter_news/presentation/screens/home.dart';
import 'package:mipt_flutter_news/presentation/themes/controller.dart';
import 'package:mipt_flutter_news/presentation/themes/themes.dart';
import 'package:provider/provider.dart';

void main() {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
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
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => FavoriteNewsCubit()),
          BlocProvider(create: (_) => NewsCubit()),
        ],
        child: MaterialApp(
            title: 'News',
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
            themeMode: theme.mode,
            home: const HomeScreen()),
      );
    });
  }
}
