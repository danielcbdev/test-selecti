import 'package:flutter/material.dart';

class AppColors{
  static const colorPrimary = Color(0xFF4D5061);
  static const colorSecondary = Color(0xFF8891CE);
  static const colorBackground = Color(0xFFE5E2E2);

  static const colorGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF16A085),
      Color(0xFF138E76),
      Color(0xFF107864),
      Color(0xFF0D6554),
    ],
    stops: [0.1, 0.4, 0.7, 0.9],
  );

}