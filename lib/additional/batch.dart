// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suuz/theme/colors.dart';

class Batch extends StatefulWidget {
  Batch({super.key, required this.faculty});

  TextEditingController faculty;

  @override
  State<Batch> createState() => _BatchState();
}

class _BatchState extends State<Batch> {
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
                height: 250,
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28), color: mainColor),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    buttons(context: context, title: "B.Tech"),
                    buttons(context: context, title: "BBA"),
                    buttons(context: context, title: "BAE"),
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
          widget.faculty.text = title;
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
