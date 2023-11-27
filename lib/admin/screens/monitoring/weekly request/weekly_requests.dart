import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/weekly_request_model.dart';
import '../../../widget/request_count_container.dart';

class WeeklyRequests extends StatefulWidget {
  const WeeklyRequests({super.key});

  @override
  State<WeeklyRequests> createState() => _WeeklyRequestsState();
}

class _WeeklyRequestsState extends State<WeeklyRequests> {
  List<WeeklyRequestModel> requests = [
    WeeklyRequestModel(weekName: 'Monday', requests: 100),
    WeeklyRequestModel(weekName: 'Tuesday', requests: 200),
    WeeklyRequestModel(weekName: 'Wednesday', requests: 1000),
    WeeklyRequestModel(weekName: 'Thursday', requests: 300),
    WeeklyRequestModel(weekName: 'Friday', requests: 170),
    WeeklyRequestModel(weekName: 'Saturday', requests: 40),
    WeeklyRequestModel(weekName: 'Sunday', requests: 0),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Weekly Requests',
          style: GoogleFonts.inter(color: Colors.black87, fontSize: 18),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * .12,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: requests.length,
                itemBuilder: (context, index) =>
                    requestCount(context: context, model: requests[index]))),
      ],
    );
  }
}
