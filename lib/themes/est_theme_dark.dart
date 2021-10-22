import 'package:flutter/material.dart';

class EstThemeDark {
  static const primary = Colors.white;
  static const primaryDark = Colors.white; // inverse of light theme
  static const primaryLight = Colors.black; // inverse of light theme
  static const onPrimary = Colors.black;
  static final accent = Colors.orange.shade700;
  static const secondaryWidget = Colors.white;
  static const onBackground = Colors.white;
  static const divider = Color(0xFFBDBDBD);
  static const background = Colors.black;

  ThemeData data = ThemeData(
    // -Colors-
    accentColor: accent,
    backgroundColor: background,
    bottomAppBarColor: null,
    buttonColor: primary,
    canvasColor: Colors.transparent,
    cardColor: null,
    cursorColor: null,
    dialogBackgroundColor: background,
    disabledColor: null,
    dividerColor: divider,
    errorColor: null,
    focusColor: null,
    highlightColor: null,
    hintColor: null,
    hoverColor: null,
    indicatorColor: null,
    platform: null,
    primaryColor: primary,
    primaryColorBrightness: null,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    primarySwatch: null,
    scaffoldBackgroundColor: background,
    secondaryHeaderColor: null,
    selectedRowColor: null,
    splashColor: null,
    toggleableActiveColor: null,
    unselectedWidgetColor: null,

    // -Sub themes-
    accentIconTheme: null,
    accentTextTheme: null,
    appBarTheme: null,
    bannerTheme: null,
    bottomAppBarTheme: null,
    bottomSheetTheme: null,
    buttonBarTheme: null,
    buttonTheme: null,
    cardTheme: null,
    chipTheme: null,
    colorScheme: ColorScheme(
        // used mainly by showDatePicker
        primary: primary,
        primaryVariant: primary.withOpacity(0.8),
        secondary: accent,
        secondaryVariant: accent.withOpacity(0.8),
        surface: primary,
        background: background,
        error: accent,
        onPrimary: onPrimary,
        onSecondary: onPrimary,
        onSurface: onBackground,
        onBackground: onBackground,
        onError: onBackground,
        brightness: Brightness.light),
    cupertinoOverrideTheme: null,
    dialogTheme: null,
    dividerTheme: null,
    floatingActionButtonTheme: null,
    iconTheme: iconThemeData,
    // inputDecorationTheme: InputDecorationTheme(
    //   enabledBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(
    //       color: primary.withOpacity(0.7),
    //     ),
    //   ),
    // ),
    inputDecorationTheme: InputDecorationTheme(
      alignLabelWithHint: false,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      fillColor: background.withOpacity(0.5),
      filled: true,
      hintStyle: TextStyle(color: primary.withOpacity(0.8)),
      labelStyle: TextStyle(color: primary.withOpacity(0.8)),
      // focusColor: Colors.transparent,

      //hasFloatingPlaceholder: true,

      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.0),
          borderRadius: BorderRadius.circular(90)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2.0),
          borderRadius: BorderRadius.circular(90)),
      isDense: false,
      //focusColor: primary,
      //hoverColor: accent
      //contentPadding: EdgeInsets.all(12.0),
    ),
    pageTransitionsTheme: null,
    popupMenuTheme: null,
    primaryIconTheme: null,
    sliderTheme: null,
    snackBarTheme: null,
    tabBarTheme: null,
    toggleButtonsTheme: null,
    tooltipTheme: null,

    // -Text-
    fontFamily: 'Noto',
    typography: null,
    textSelectionColor: null,
    textSelectionHandleColor: null,

    primaryTextTheme: TextTheme(
      bodyText1: null,
      bodyText2: null,
      headline1: primaryHeadline1,
      headline2: null,
      headline3: null,
      headline4: null,
      headline5: null,
      headline6: null,
      subtitle1: null,
      subtitle2: null,
      overline: null,
      button: null,
      caption: null,
    ),
    textTheme: TextTheme(
      bodyText1: backgroundBodyText1,
      bodyText2: null,
      headline1: null,
      headline2: null,
      headline3: null,
      headline4: null,
      headline5: null,
      headline6: null,
      subtitle1: null,
      subtitle2: null,
      overline: null,
      button: null,
      caption: null,
    ),

    // -Other-
    brightness: Brightness.light,
    accentColorBrightness: null,
    applyElevationOverlayColor: null,
    materialTapTargetSize: null,
    splashFactory: null,
    visualDensity: null,
  );

  static const TextStyle primaryHeadline1 = TextStyle(
    fontFamily: 'Pacifico',
    color: onPrimary,
    fontSize: 34,
    wordSpacing: 2,
  );

  static const TextStyle backgroundBodyText1 = TextStyle(
    color: onBackground,
    fontSize: 14,
    wordSpacing: 2,
  );

  static const IconThemeData iconThemeData = IconThemeData(
    color: onPrimary,
    opacity: 1.0,
    size: 24.0,
  );
}

// TextTheme estTextThemeReleway(TextTheme base) {
//   return base.copyWith(
//     headline1: base.headline1.copyWith(
//     fontFamily: 'Raleway',
//     fontSize: 22.0,
//   ));
// }

// class EstTextTheme extends TextTheme {
//   final TextStyle estTextStyle =
//       TextStyle(fontSize: 20, fontStyle: FontStyle.italic);

//   EstTextTheme();

// }
