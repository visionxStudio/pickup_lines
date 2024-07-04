import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pickup_lines/locale/app_localization.dart';
import 'package:pickup_lines/locale/locale_provider.dart';
import 'package:pickup_lines/router/import_router.dart';
import 'package:pickup_lines/themes/theme_data.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {}
}

Future<void> main() async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends ConsumerState<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: Themes.dark,
        dark: Themes.dark,
        initial: AdaptiveThemeMode.dark,
        builder: (theme, darkTheme) {
          return MaterialApp.router(
            routerConfig: _appRouter.config(),
            title: "App Name ",
            debugShowCheckedModeBanner: false,
            showPerformanceOverlay: false,
            theme: theme,
            darkTheme: darkTheme,
            locale: ref.watch(localeProvider),
            supportedLocales: supportedLocale.map((e) => Locale(e)).toList(),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        });
  }
}
