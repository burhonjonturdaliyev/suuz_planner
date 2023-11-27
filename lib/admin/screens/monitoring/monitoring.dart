import 'package:flutter/material.dart';
import 'package:suuz/theme/colors.dart';
import 'users/user_info.dart';
import 'weekly request/weekly_requests.dart';

class MonitoringUser extends StatefulWidget {
  const MonitoringUser({super.key});

  @override
  State<MonitoringUser> createState() => _MonitoringUserState();
}

class _MonitoringUserState extends State<MonitoringUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              WeeklyRequests(),
              UserControlInfo(),
            ],
          ),
        ));
  }
}
