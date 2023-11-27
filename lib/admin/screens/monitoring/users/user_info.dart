import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/user_info_model.dart';
import '../../../widget/request_count_container.dart';

class UserControlInfo extends StatefulWidget {
  const UserControlInfo({super.key});

  @override
  State<UserControlInfo> createState() => _UserControlInfoState();
}

class _UserControlInfoState extends State<UserControlInfo> {
  List<UserAdminInfoModel> model = [
    UserAdminInfoModel(name: 'All Users', number: 1000),
    UserAdminInfoModel(name: 'Recently Join', number: 5),
    UserAdminInfoModel(name: 'Deleted Users', number: 20),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Users',
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
              itemCount: model.length,
              itemBuilder: (context, index) => userCount(
                    context: context,
                    model: model[index],
                  )),
        )
      ],
    );
  }
}
