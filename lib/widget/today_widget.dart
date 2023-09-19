import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:suuz/model/subject_model.dart';

class TodayWidget extends StatefulWidget {
  const TodayWidget({super.key});

  @override
  State<TodayWidget> createState() => _TodayWidgetState();
}

class _TodayWidgetState extends State<TodayWidget> {
  List<SubjectModel> model = [];
  String? day;
  getList() async {
    await getDay();
    print(day?.toLowerCase());
  }

  getDay() {
    setState(() {
      day = DateFormat("EEEE").format(DateTime.now());
    });
  }

  @override
  void initState() {
    getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Container(),
    );
  }
}
