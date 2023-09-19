import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:suuz/data/btech.dart';
import 'package:suuz/info/subject_info.dart';
import 'package:suuz/model/subject_model.dart';
import 'package:suuz/theme/colors.dart';

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  Timer? timer;
  DateTime now = DateTime.now();
  List<SubjectModel> model = [];
  String? day;
  getList() async {
    await getDay();
    print(day?.toLowerCase());
    if (day?.toLowerCase() == "monday") {
      setState(() {
        model = BTECH().monday;
      });
    } else if (day?.toLowerCase() == "tuesday") {
      setState(() {
        model = BTECH().tuesday;
      });
    } else if (day?.toLowerCase() == "wednesday") {
      setState(() {
        model = BTECH().wednesday;
      });
    } else if (day?.toLowerCase() == 'thursday') {
      setState(() {
        model = BTECH().thursday;
      });
    } else if (day?.toLowerCase() == 'friday') {
      setState(() {
        model = BTECH().friday;
      });
    }
  }

  getDay() {
    setState(() {
      day = DateFormat("EEEE").format(DateTime.now());
    });
  }

  void clock() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (mounted) {
          now = DateTime.now();
        }
      });
    });
  }

  @override
  void initState() {
    clock();
    getList();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: SizedBox(
            height: 120,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.65,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Center(
                    child: Text(
                      DateFormat('HH:mm:ss').format(now),
                      style: GoogleFonts.inter(
                        color: white,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      day!.toUpperCase(),
                      style: GoogleFonts.inter(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: mainColor,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: model.length,
            (BuildContext context, int index) {
              // Build and return the items for your list here
              return design(model[index]);
            },
          ),
        ),
      ],
    );
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
