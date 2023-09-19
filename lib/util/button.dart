import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suuz/theme/colors.dart';

ElevatedButton button({required String name, required Function() onPressed}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          maximumSize: Size(256, 57),
          minimumSize: Size(256, 57),
          backgroundColor: mainColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.5))),
      onPressed: onPressed,
      child: Text(
        name,
        style: GoogleFonts.inter(
            color: white, fontSize: 19, fontWeight: FontWeight.bold),
      ));
}
