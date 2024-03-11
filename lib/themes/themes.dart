import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors(
      {required this.foreground,
      required this.background,
      required this.contentForeground,
      required this.contentBackground,
      required this.dividerForeground,
      required this.loadingForeground,
      required this.loadingBackground,
      required this.imagePlaceholderColor});

  final Color? foreground;
  final Color? background;

  final Color? contentForeground;
  final Color? contentBackground;

  final Color? dividerForeground;

  final Color? loadingForeground;
  final Color? loadingBackground;

  final Color? imagePlaceholderColor;

  @override
  ThemeColors copyWith(
      {Color? foreground,
      Color? background,
      Color? contentForeground,
      Color? contentBackground,
      Color? dividerForeground,
      Color? loadingForeground,
      Color? loadingBackground,
      Color? imagePlaceholderColor}) {
    return ThemeColors(
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      contentForeground: contentForeground ?? this.contentForeground,
      contentBackground: contentBackground ?? this.contentBackground,
      dividerForeground: dividerForeground ?? this.dividerForeground,
      loadingForeground: loadingForeground ?? this.loadingForeground,
      loadingBackground: loadingBackground ?? this.loadingBackground,
      imagePlaceholderColor:
          imagePlaceholderColor ?? this.imagePlaceholderColor,
    );
  }

  @override
  ThemeColors lerp(ThemeColors? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
        foreground: Color.lerp(foreground, other.foreground, t),
        background: Color.lerp(background, other.background, t),
        contentForeground:
            Color.lerp(contentForeground, other.contentForeground, t),
        contentBackground:
            Color.lerp(contentBackground, other.contentBackground, t),
        dividerForeground:
            Color.lerp(dividerForeground, other.dividerForeground, t),
        loadingForeground:
            Color.lerp(loadingForeground, other.loadingForeground, t),
        loadingBackground:
            Color.lerp(loadingBackground, other.loadingBackground, t),
        imagePlaceholderColor:
            Color.lerp(imagePlaceholderColor, other.imagePlaceholderColor, t));
  }
}

class Themes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarBrightness: Brightness.dark)),
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors(
            foreground: Colors.black,
            background: const Color(0xfff0f0f0),
            contentForeground: Colors.black,
            contentBackground: Colors.white,
            dividerForeground: Colors.grey[200],
            loadingForeground: Colors.grey[700],
            loadingBackground: Colors.white,
            imagePlaceholderColor: Colors.grey[100]),
      ]);

  static ThemeData darkTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarBrightness: Brightness.dark)),
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors(
            foreground: Colors.white,
            background: Colors.black,
            contentForeground: Colors.white,
            contentBackground: const Color(0xff202020),
            dividerForeground: Colors.grey[800],
            loadingForeground: Colors.grey[700],
            loadingBackground: const Color(0xff202020),
            imagePlaceholderColor: Colors.grey[800]),
      ]);
}

Themes themes = Themes();
