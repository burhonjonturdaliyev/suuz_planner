import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Padding formField(
    {required TextEditingController controller,
    required String label,
    required BuildContext context,
    bool? readOnly,
    Function()? onPressed}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Color.fromARGB(190, 255, 255, 255),
          borderRadius: BorderRadius.circular(13)),
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 16),
        readOnly: readOnly ?? false,
        onTap: onPressed,
        keyboardType: readOnly == true
            ? TextInputType.none
            : (readOnly == false || readOnly == null
                ? TextInputType.multiline
                : TextInputType.none),
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        validator: (value) {
          if (controller.text.isEmpty) {
            return "Please, fill the form";
          }
          return null;
        },
        decoration: InputDecoration(
            label: Text(
              label,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(13))),
      ),
    ),
  );
}
