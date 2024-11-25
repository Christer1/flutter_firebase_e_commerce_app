


import 'package:e_commerce_app_with_firebase/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:e_commerce_app_with_firebase/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app_with_firebase/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce_app_with_firebase/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_app_with_firebase/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app_with_firebase/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_app_with_firebase/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce_app_with_firebase/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    disabledColor: Colors.grey,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    disabledColor: Colors.grey,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme

  );
}