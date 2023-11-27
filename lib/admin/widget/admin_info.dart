import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/colors.dart';

Container adminInfo() {
  return Container(
    height: 80,
    margin: EdgeInsets.only(left: 15, right: 15),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: grey),
        borderRadius: BorderRadius.circular(25)),
    child: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  'https://avatars.githubusercontent.com/u/95471905?v=4'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Xush Kelibsiz!',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600,
                  fontSize: 14,
                ),
              ),
              Text(
                'Burkhonjon Turdialiev',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800,
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
