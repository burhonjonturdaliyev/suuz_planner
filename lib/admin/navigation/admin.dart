import 'package:flutter/material.dart';
import 'package:suuz/admin/screens/add_subject.dart';
import 'package:suuz/admin/screens/home_admin.dart';
import 'package:suuz/admin/screens/monitoring.dart';
import 'package:suuz/theme/colors.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  PageController controller = PageController();
  int selectedIndex = 0;
  @override
  void initState() {
    controller = PageController(initialPage: selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * .2,
        decoration: BoxDecoration(
            color: white,
            border: Border(top: BorderSide(width: 1, color: grey))),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  controller.animateToPage(0,
                      duration: Duration(milliseconds: 250),
                      curve: Curves.bounceInOut);
                },
                child: Image.asset(
                  'image/Icon/home.png',
                  width: MediaQuery.of(context).size.width * .08,
                  color: selectedIndex == 0 ? mainColor : Colors.grey.shade300,
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 250),
                      curve: Curves.bounceInOut);
                },
                child: Image.asset(
                  'image/Icon/add.png',
                  width: MediaQuery.of(context).size.width * .08,
                  color: selectedIndex == 1 ? mainColor : Colors.grey.shade300,
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.animateToPage(2,
                      duration: Duration(milliseconds: 250),
                      curve: Curves.bounceInOut);
                },
                child: Image.asset(
                  'image/Icon/monitor.png',
                  width: MediaQuery.of(context).size.width * .08,
                  color: selectedIndex == 2 ? mainColor : Colors.grey.shade300,
                ),
              ),
            ]),
      ),
      body: SafeArea(
        child: PageView(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          children: [HomeAdmin(), AddSubject(), MonitoringUser()],
        ),
      ),
    );
  }
}
