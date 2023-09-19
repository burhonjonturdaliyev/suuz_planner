import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:suuz/data/btech.dart';
import 'package:suuz/info/full_info.dart';

import '../model/subject_model.dart';
import '../theme/colors.dart';

class Week extends StatefulWidget {
  const Week({super.key});

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          container(name: "Monday", model: BTECH().monday),
          container(name: "Tuesday", model: BTECH().tuesday),
          container(name: "Wednesday", model: BTECH().wednesday),
          container(name: "Thursday", model: BTECH().thursday),
          container(name: "Friday", model: BTECH().friday),
        ],
      ),
    );
  }

  Widget container({required String name, required List<SubjectModel> model}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: FullInfo(title: name, model: model),
                type: PageTransitionType.fade));
      },
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(13)),
        child: Center(
          child: Text(
            name,
            style: GoogleFonts.inter(
                color: white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
