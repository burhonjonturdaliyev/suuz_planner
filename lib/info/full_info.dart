// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:suuz/info/subject_info.dart';
import 'package:suuz/model/subject_model.dart';
import 'package:suuz/style/appBar.dart';
import 'package:suuz/theme/colors.dart';

class FullInfo extends StatefulWidget {
  FullInfo({super.key, required this.title, required this.model});
  String title;
  List<SubjectModel> model;
  @override
  State<FullInfo> createState() => _FullInfoState();
}

class _FullInfoState extends State<FullInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          centerTitle: true,
          foregroundColor: white,
          title: Text(
            widget.title,
            style: appBarStyle,
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: widget.model.length,
                (BuildContext context, int index) {
                  // Build and return the items for your list here
                  return design(widget.model[index]);
                },
              ),
            ),
          ],
        ));
  }

  GestureDetector design(SubjectModel model) {
    return GestureDetector(
      onTap: model.teacher != ''
          ? () => Navigator.push(
              context,
              PageTransition(
                  child: SubjectInfo(
                    courseCode: model.courseCode,
                    fullName: model.fullName,
                    teacher: model.teacher,
                    time: model.time,
                  ),
                  type: PageTransitionType.fade))
          : () => null,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(13)),
        child: ListTile(
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                model.time,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          title: Text(
            model.courseCode,
            style: GoogleFonts.inter(
                color: white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
