import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:suuz/data/bae.dart';
import 'package:suuz/data/bba.dart';
import 'package:suuz/data/btech.dart';
import 'package:suuz/info/full_info.dart';
import 'package:suuz/provider/db_provider.dart';

import '../model/subject_model.dart';
import '../theme/colors.dart';

class Week extends StatefulWidget {
  const Week({super.key});

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  List<SubjectModel> monday = [];
  List<SubjectModel> tuesday = [];
  List<SubjectModel> wednesday = [];
  List<SubjectModel> thursday = [];
  List<SubjectModel> friday = [];
  String batch = '';
  String year = '';
  getUser() async {
    final _batch = await DatabaseProvider().getFaculty();
    final _year = await DatabaseProvider().getYear();
    setState(() {
      batch = _batch;
      year = _year;
    });
    if (batch == 'B.Tech') {
      if (year == 'First year') {
      } else if (year == 'Second year') {
        setState(() {
          monday = BTECH2().monday;
          tuesday = BTECH2().tuesday;
          wednesday = BTECH2().wednesday;
          thursday = BTECH2().thursday;
          friday = BTECH2().friday;
        });
      } else if (year == 'Third year') {
        setState(() {
          monday = BTECH3().monday;
          tuesday = BTECH3().tuesday;
          wednesday = BTECH3().wednesday;
          thursday = BTECH3().thursday;
          friday = BTECH3().friday;
        });
      } else if (year == 'Final year') {
        setState(() {
          monday = BTECH4().monday;
          tuesday = BTECH4().tuesday;
          wednesday = BTECH4().wednesday;
          thursday = BTECH4().thursday;
          friday = BTECH4().friday;
        });
      }
    } else if (batch == 'BBA') {
      if (year == 'First year') {
      } else if (year == 'Second year') {
      } else if (year == 'Third year') {
        setState(() {
          monday = BBA3().monday;
          tuesday = BBA3().tuesday;
          wednesday = BBA3().wednesday;
          thursday = BBA3().thursday;
          friday = BBA3().friday;
        });
      } else if (year == 'Final year') {}
    } else if (batch == 'BAE') {
      if (year == 'First year') {
      } else if (year == 'Second year') {
        setState(() {
          monday = BAE2().monday;
          tuesday = BAE2().tuesday;
          wednesday = BAE2().wednesday;
          thursday = BAE2().thursday;
          friday = BAE2().friday;
        });
      } else if (year == 'Third year') {
      } else if (year == 'Final year') {}
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          container(name: "Monday", model: monday),
          container(name: "Tuesday", model: tuesday),
          container(name: "Wednesday", model: wednesday),
          container(name: "Thursday", model: thursday),
          container(name: "Friday", model: friday),
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
