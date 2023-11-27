import 'package:flutter/material.dart';
import 'package:suuz/theme/colors.dart';

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
      body: Center(
        child: Text('MonitoringUser page'),
      ),
    );
  }
}
