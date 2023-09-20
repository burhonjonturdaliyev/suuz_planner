import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';

showMessage(String text, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: mainColor,
      clipBehavior: Clip.antiAlias,
      duration: const Duration(seconds: 2),
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
            color: white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
