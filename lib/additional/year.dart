// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suuz/theme/colors.dart';

class Year extends StatefulWidget {
  Year({super.key, required this.year});

  TextEditingController year;

  @override
  State<Year> createState() => _YearState();
}

class _YearState extends State<Year> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Scaffold(
          backgroundColor: background,
          body: Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28), color: mainColor),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    buttons(context: context, title: "First year"),
                    buttons(context: context, title: "Second year"),
                    buttons(context: context, title: "Third year"),
                    buttons(context: context, title: "Final year"),
                  ],
                )),
              ),
            ),
          ),
        ));
  }

  GestureDetector buttons(
      {required BuildContext context, required String title}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.year.text = title;
        });
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.all(5),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(13)),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.inter(
                color: mainColor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
