import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suuz/admin/model/user_info_model.dart';
import 'package:suuz/admin/model/weekly_request_model.dart';
import 'package:suuz/theme/colors.dart';

Container requestCount(
    {required BuildContext context, required WeeklyRequestModel model}) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 70,
    width: MediaQuery.of(context).size.width * .3,
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black38),
        borderRadius: BorderRadius.circular(12)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          model.weekName,
          style: GoogleFonts.inter(
              color: Colors.black45, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 30,
          decoration: BoxDecoration(
              color: white,
              border: Border.all(width: 1, color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text('${model.requests}'),
          ),
        )
      ],
    ),
  );
}

Container userCount(
    {required BuildContext context, required UserAdminInfoModel model}) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 70,
    width: MediaQuery.of(context).size.width * .38,
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black38),
        borderRadius: BorderRadius.circular(12)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          model.name,
          style: GoogleFonts.inter(
              color: Colors.black45, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 30,
          decoration: BoxDecoration(
              color: white,
              border: Border.all(width: 1, color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text('${model.number}'),
          ),
        )
      ],
    ),
  );
}
