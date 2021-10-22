import 'package:flutter/material.dart';

class EstThemeLight {
  static const primary = Color(0xFF64B5F6);

  static const primaryDark = Color(0xFF003c8f);
  static const primaryLight = Color(0xFF9be7ff);

  static final accent = Color(0xFFFF6F00);
  static const background = Color(0xFFeceff1);
  static const base = Color(0xFF212121);

  static const onBackground = Color(0xFF757575);

  // static const onPrimary = Color(0xFFFFFFFF);
  // static const accent = Color(0xff6f000;
  // static const accent = Colors.pink;
  // static const secondaryWidget = Color(0xFF212121);
  // static const divider = Color(0xFFBDBDBD);

  // Decoration getLoginScreenBackground() {
  //   return BoxDecoration(
  //     gradient: LinearGradient(
  //       colors: [primary, accent],
  //       stops: [0.0, 1.0],
  //       begin: Alignment.topLeft,
  //       end: Alignment.bottomCenter,
  //     ),
  //   );
  // }

  ThemeData data = ThemeData(
    // -Colors-
    accentColor: accent, // !!
    backgroundColor: background, // !!
    bottomAppBarColor: primary, // !!
    buttonColor: primary,
    canvasColor: Colors.transparent,
    // canvasColor: background,
    cardColor: Colors.white,
    cursorColor: null,
    dialogBackgroundColor: background,
    disabledColor: Colors.grey,
    dividerColor: base,
    errorColor: Colors.redAccent,
    focusColor: primary,
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
    scaffoldBackgroundColor: null,
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
        onPrimary: base,
        onSecondary: base,
        onSurface: base,
        onBackground: onBackground,
        onError: onBackground,
        brightness: Brightness.light),
    cupertinoOverrideTheme: null,
    dialogTheme: DialogTheme(
        backgroundColor: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    dividerTheme: null,
    floatingActionButtonTheme: null,
    iconTheme: iconThemeData,
    inputDecorationTheme: InputDecorationTheme(
      //hintStyle: labelStyle,
      alignLabelWithHint: false,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      focusColor: Colors.transparent,

      //hasFloatingPlaceholder: true,

      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: base, width: 1.0),
          borderRadius: BorderRadius.circular(20)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: base, width: 1.0),
          borderRadius: BorderRadius.circular(20)),
      fillColor: Colors.white,
      filled: true,
      isDense: false,
      //focusColor: primary,
      //hoverColor: accent
      //contentPadding: EdgeInsets.all(12.0),
    ),
    pageTransitionsTheme: null,
    popupMenuTheme: null,
    primaryIconTheme: null,
    sliderTheme: SliderThemeData(showValueIndicator: ShowValueIndicator.always),
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
      headline4: cardHeaderStyle,
      headline5: null,
      headline6: null,
      subtitle1: null,
      subtitle2: null,
      overline: null,
      button: buttonStyle,
      caption: null,
    ),
    textTheme: TextTheme(
      bodyText1: backgroundBodyText1,
      bodyText2: userFeedbackStyle,
      headline1: primaryHeadline1,
      headline2: null,
      headline3: null,
      headline4:
          valueStyle, // this is specifically used by showDatePicker for theming
      headline5: null,
      headline6: null,
      subtitle1: valueStyle, // applies to Text Fields
      subtitle2: labelStyle,
      overline: null,
      button: null,
      caption: TextStyle(
        color: Colors.redAccent,
      ),
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
    color: base,
    fontSize: 34,
    wordSpacing: 2,
  );

  static const TextStyle backgroundBodyText1 = TextStyle(
    color: base,
    fontSize: 12,
    wordSpacing: 1,
  );

  static const TextStyle backgroundBodyText2 = TextStyle(
    color: onBackground,
    fontSize: 14,
    wordSpacing: 4,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle userFeedbackStyle = TextStyle(
    color: base,
    fontSize: 14,
    wordSpacing: 4,
  );

  static const IconThemeData iconThemeData = IconThemeData(
    color: base,
    opacity: 1.0,
    size: 24.0,
  );

  static TextStyle valueStyle = TextStyle(
    color: base,
    fontWeight: FontWeight.bold,
    wordSpacing: 1.0,
  );

  static TextStyle labelStyle = TextStyle(
    color: background.withOpacity(0.8),
    wordSpacing: 1.0,
  );

  static TextStyle cardHeaderStyle = TextStyle(
    color: base,
    fontSize: 12,
    wordSpacing: 1.0,
  );

  static const TextStyle buttonStyle = TextStyle(
      fontFamily: 'Roboto',
      color: base,
      fontSize: 16,
      wordSpacing: 2,
      fontWeight: FontWeight.bold);
}
