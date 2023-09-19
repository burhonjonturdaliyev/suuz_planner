import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suuz/theme/colors.dart';
import 'package:suuz/util/button.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 45,
            backgroundColor: mainColor,
            child: Icon(
              CupertinoIcons.person,
              color: white,
              size: 45,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Your Name",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, color: mainColor, fontSize: 25),
          ),
          Text(
            '(B.Tech)',
            style: GoogleFonts.inter(
                fontSize: 20, fontWeight: FontWeight.w600, color: mainColor),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
            height: MediaQuery.of(context).size.height * 0.21,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                color: mainColor, borderRadius: BorderRadius.circular(25)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Name:" + " " + "Your Name",
                    style: GoogleFonts.inter(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Surname:" + " " + "Your Surname",
                    style: GoogleFonts.inter(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Faculty:" + " " + "B.Tech",
                    style: GoogleFonts.inter(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Year:" + " " + "Third year",
                    style: GoogleFonts.inter(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          button(name: "Logout", onPressed: () {})
        ],
      ),
    );
  }
}
