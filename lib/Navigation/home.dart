import 'package:flutter/material.dart';
import 'package:suuz/screen/setting.dart';
import 'package:suuz/screen/today.dart';
import 'package:suuz/screen/week.dart';

import 'package:suuz/style/appBar.dart';
import 'package:suuz/theme/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 1;
  PageController controller = PageController();

  @override
  void initState() {
    controller = PageController(initialPage: selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: white,
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text(
          "Suuz plan".toUpperCase(),
          style: appBarStyle,
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 1,
        height: 60,
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(15)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                      controller.jumpToPage(selectedIndex);
                    });
                  },
                  icon: Icon(
                    Icons.analytics_outlined,
                    size: 35,
                    color: selectedIndex == 0 ? white : grey,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                      controller.jumpToPage(selectedIndex);
                    });
                  },
                  icon: Icon(
                    Icons.home,
                    size: 35,
                    color: selectedIndex == 1 ? white : grey,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2;
                      controller.jumpToPage(selectedIndex);
                    });
                  },
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 35,
                    color: selectedIndex == 2 ? white : grey,
                  )),
            ]),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        children: [Week(), Today(), Setting()],
      ),
    );
  }
}
