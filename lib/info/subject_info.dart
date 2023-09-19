// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suuz/theme/colors.dart';

class SubjectInfo extends StatefulWidget {
  SubjectInfo(
      {super.key,
      required this.courseCode,
      required this.fullName,
      required this.teacher,
      required this.time});
  String courseCode, fullName, time, teacher;

  @override
  State<SubjectInfo> createState() => _SubjectInfoState();
}

class _SubjectInfoState extends State<SubjectInfo> {
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
              height: 300,
              width: 350,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(13)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.time,
                        style: GoogleFonts.inter(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Course Code: " + widget.courseCode,
                    style: GoogleFonts.inter(color: white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Name of Course: " + widget.fullName,
                    style: GoogleFonts.inter(color: white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Staff name: " + widget.teacher,
                    style: GoogleFonts.inter(color: white, fontSize: 16),
                  )
                ],
              ),
            ),
          )),
        ));
  }
}
