import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suuz/theme/colors.dart';

class AddSubject extends StatefulWidget {
  const AddSubject({super.key});

  @override
  State<AddSubject> createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(28.5)),
                  child: Center(
                    child: Text(
                      'Add class',
                      style: GoogleFonts.inter(
                          color: white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.all(17),
                  width: MediaQuery.of(context).size.width * .2,
                  height: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    'image/Icon/timetable.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(28.5)),
                  child: Center(
                    child: Text(
                      'Add teacher',
                      style: GoogleFonts.inter(
                          color: white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.all(17),
                  width: MediaQuery.of(context).size.width * .2,
                  height: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    'image/Icon/timetable.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(28.5)),
                  child: Center(
                    child: Text(
                      'Add event',
                      style: GoogleFonts.inter(
                          color: white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.all(17),
                  width: MediaQuery.of(context).size.width * .2,
                  height: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    'image/Icon/timetable.png',
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
