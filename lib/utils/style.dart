import 'package:beauty_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Style {
  static const TextStyle openSansSemiBold16 = TextStyle(
    fontFamily: kOpenSans,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const TextStyle openSansBold18 = TextStyle(
    fontFamily: kOpenSans,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: kPrimary,
  );
  static const TextStyle openSansSemiBold14 = TextStyle(
    fontFamily: kOpenSans,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: kPrimary,
  );
  static const TextStyle openSansSemiBold12 = TextStyle(
    fontFamily: kOpenSans,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: kPrimary,
  );
  static const TextStyle openSansSemiBold10 = TextStyle(
    fontFamily: kOpenSans,
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: kPrimary,
  );
  static const TextStyle openSansRegular12 = TextStyle(
    fontFamily: kOpenSans,
    fontSize: 12,
    color: kPrimary,
  );
  static const TextStyle oleoScriptRegular30 = TextStyle(
    fontFamily: kOleoScript,
    fontSize: 30,
    color: kPrimary,
  );
  static const TextStyle oleoScriptRegular24 = TextStyle(
    fontFamily: kOleoScript,
    fontSize: 24,
    color: kPrimary,
  );
  static const TextStyle oleoScriptRegular12 = TextStyle(
    fontFamily: kOleoScript,
    fontSize: 12,
    color: kPrimary,
  );
  static const TextStyle oleoScriptBold18 = TextStyle(
    fontFamily: kOleoScript,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: kPrimary,
  );
  static const TextStyle oleoScriptBold15 = TextStyle(
    fontFamily: kOleoScript,
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: kPrimary,
  );
}
