import 'package:flutter/material.dart';

import 'package:pickup_lines/constants/theme_constants/theme_constants_data.dart';
import 'package:pickup_lines/constants/theme_constants/theme_widget_constants.dart';
import 'package:pickup_lines/themes/theme_constants.dart';

class Themes {
  Themes._(); // private constructor

  /// Light Theme
  static final ThemeData light = ThemeData.light().copyWith(
    iconTheme: const IconThemeData(
      color: kBlackColor,
    ),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
      color: kBlackColor,
    )),
    primaryColor: const Color(0xFF1b2934),
    tabBarTheme: const TabBarTheme(
      labelColor: kBlackColor,
      unselectedLabelColor: kGreyColor,
      indicatorSize: TabBarIndicatorSize.label,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryTextTheme: ThemeData().textTheme.copyWith(
          titleLarge: ThemeData().textTheme.titleLarge!.copyWith(
                color: kBlackColor,
                fontSize: kDefaultTextSize,
              ),
          displayLarge: ThemeData().textTheme.titleLarge!.copyWith(
                color: kBlackColor,
                fontSize: kDefaultTextSize,
              ),
          bodySmall: ThemeData().textTheme.titleLarge!.copyWith(
                // color: kGreyColor,
                color: const Color(0xFF7D7D7D),
                fontSize: kDefaultTextSize,
              ),
          displayMedium: ThemeData().textTheme.titleLarge!.copyWith(
                color: const Color(0xFFE9E9E9),
                fontSize: kDefaultTextSize,
              ),
          titleMedium: ThemeData().textTheme.titleLarge!.copyWith(
                // color: kGreyColor,
                color: const Color(0xFF4C4C4C),
                fontSize: kDefaultTextSize,
              ),
        ),
    hintColor: const Color.fromARGB(255, 158, 158, 158),
    unselectedWidgetColor: kWhiteColor,
    secondaryHeaderColor: const Color(0xFFF5F5F5),
    cardColor: kWhiteColor,
    highlightColor: const Color(0xfff2f3f5),
    // highlightColor: const Color(0xFF1b2934),

    textTheme: lightTextTheme,
    scaffoldBackgroundColor: kWhiteColor,
    primaryIconTheme: const IconThemeData(color: kWhiteColor),
    elevatedButtonTheme: elevatedButtonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    inputDecorationTheme: inputDecorationTheme,
    colorScheme: ThemeData()
        .colorScheme
        .copyWith(
          primary: kPrimaryColor,
          secondary: kSecondaryColor,
          background: kSecondaryColor,
          brightness: Brightness.light,
        )
        .copyWith(error: kRedColor),
    bottomAppBarTheme: const BottomAppBarTheme(color: kWhiteColor),
  );

  /// Dark Theme

  static final ThemeData dark = ThemeData.dark().copyWith(
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: kPrimaryColorDark,
          secondary: kSecondaryColor,
          background: kPrimaryColorDark,
          brightness: Brightness.dark,
        ),
    // secondaryHeaderColor: const Color(0xFF1B1B1B),
    secondaryHeaderColor: const Color(0xFF1E1E1E),
    unselectedWidgetColor: const Color(0xFF1E1E1E),
    cardColor: const Color(0xFF3D3D3D),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
      color: kWhiteColor,
    )),
    primaryTextTheme: ThemeData().textTheme.copyWith(
          titleLarge: ThemeData().textTheme.titleLarge!.copyWith(
                color: kWhiteColor,
                fontSize: kDefaultTextSize,
              ),
          displayLarge: ThemeData().textTheme.titleLarge!.copyWith(
                color: kWhiteColor,
                fontSize: kDefaultTextSize,
              ),
          displayMedium: ThemeData().textTheme.titleLarge!.copyWith(
                color: const Color(0xFFE9E9E9),
                fontSize: kDefaultTextSize,
              ),
          bodySmall: ThemeData().textTheme.titleLarge!.copyWith(
                color: kGreyColor,
                fontSize: kDefaultTextSize,
              ),
          titleMedium: ThemeData().textTheme.titleLarge!.copyWith(
                // color: kGreyColor,
                color: kWhiteColor,
                fontSize: kDefaultTextSize,
              ),
        ),
    hintColor: const Color(0xFF565656),

    dividerColor: Colors.grey.withOpacity(0.3),
    highlightColor: const Color(0xFF1b2934),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: kWhiteColor,
      unselectedLabelColor: kGreyColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: const Color(0xFF1b2934),
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: const Color(0xFF151a1e),

    primaryIconTheme: const IconThemeData(color: kWhiteColor),
    elevatedButtonTheme: elevatedButtonThemeData,
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xFF1B1B1B)),
  );
}
