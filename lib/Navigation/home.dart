import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:suuz/const/paymets.dart';
import 'package:suuz/model/subject_model.dart';
import 'package:suuz/provider/db_provider.dart';
import 'package:suuz/screen/setting.dart';
import 'package:suuz/screen/today.dart';
import 'package:suuz/screen/week.dart';

import 'package:suuz/style/appBar.dart';
import 'package:suuz/theme/colors.dart';

import '../data/bae.dart';
import '../data/btech.dart';
import '../util/launch.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 1;
  PageController controller = PageController();
  String batch = '';
  String year = '';
  String? day;
  List<SubjectModel> model = [];

  getDay() {
    setState(() {
      day = DateFormat("EEEE").format(DateTime.now());
    });
  }

  checking() async {
    final _batch = await DatabaseProvider().getFaculty();
    final _year = await DatabaseProvider().getYear();
    setState(() {
      batch = _batch;
      year = _year;
    });
    if(batch=='B.Tech'){
      if(year=='Third year'){
        btech3();
      }else if(year=='First year'){

      }else if(year=='Second year'){

      }else if(year=='Final year'){
btech4();
      }
    }else if(batch=='BAE'){
       if(year=='Third year'){

       }else if(year=='First year'){

       }else if(year=='Second year'){
        baa2();
       }else if(year=='Final year'){

       }
    }else if(batch=='BBA'){
      if(year=='Third year'){

      }else if(year=='First year'){

      }else if(year=='Second year'){

      }else if(year=='Final year'){

      }
    }
  }

  @override
  void initState() {
    controller = PageController(initialPage: selectedIndex);
    checking();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('image/sharda/campus.jpg'),
            opacity: 0.25,
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: transparent,
        drawer: Drawer(
          backgroundColor: white,
          child: Column(
            children: [
              SizedBox(
                  height: 250,
                  child: Image.asset('image/sharda/logo_sharda.png')),
              Divider(
                thickness: 1,
                color: mainColor,
              ),
              ListTile(
                title: Text(
                  "Click",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: mainColor),
                ),
                subtitle: Text(
                  "Qo'llab quvvatlash uchun:",
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                onTap: () async {
                  await Clicker(click);
                },
                trailing: Icon(
                  Icons.payment,
                  color: mainColor,
                ),
              ),
              Divider(
                thickness: 1,
                color: mainColor,
              ),
              ListTile(
                title: Text(
                  "Admin",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: mainColor),
                ),
                subtitle: Text(
                  "Dasturchi bilan bog'lanish:",
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                onTap: () async {
                  await Clicker(admin);
                },
                trailing: Icon(
                  Icons.telegram,
                  color: mainColor,
                ),
              ),
              Divider(
                thickness: 1,
                color: mainColor,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          foregroundColor: white,
          backgroundColor: mainColor,
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext scaffoldContext) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(scaffoldContext).openDrawer();
                },
                child: Image.asset(
                  "image/Icon/Sort.png",
                  width: 45,
                ),
              );
            },
          ),
          title: Text(
            "Suuz plan".toUpperCase(),
            style: appBarStyle,
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 25, top: 5),
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
          children: [
            Week(),
            Today(
              model: model,
            ),
            Setting()
          ],
        ),
      ),
    );
  }

  btech4() async {
    await getDay();
    print(day?.toLowerCase());
    if (day?.toLowerCase() == "monday") {
      setState(() {
        model = BTECH4().monday;
      });
    } else if (day?.toLowerCase() == "tuesday") {
      setState(() {
        model = BTECH4().tuesday;
      });
    } else if (day?.toLowerCase() == "wednesday") {
      setState(() {
        model = BTECH4().wednesday;
      });
    } else if (day?.toLowerCase() == 'thursday') {
      setState(() {
        model = BTECH4().thursday;
      });
    } else if (day?.toLowerCase() == 'friday') {
      setState(() {
        model = BTECH4().friday;
      });
    }
  }
  btech3() async {
    await getDay();
    print(day?.toLowerCase());
    if (day?.toLowerCase() == "monday") {
      setState(() {
        model = BTECH3().monday;
      });
    } else if (day?.toLowerCase() == "tuesday") {
      setState(() {
        model = BTECH3().tuesday;
      });
    } else if (day?.toLowerCase() == "wednesday") {
      setState(() {
        model = BTECH3().wednesday;
      });
    } else if (day?.toLowerCase() == 'thursday') {
      setState(() {
        model = BTECH3().thursday;
      });
    } else if (day?.toLowerCase() == 'friday') {
      setState(() {
        model = BTECH3().friday;
      });
    }
  }

  baa2() async {
    await getDay();
    print(day?.toLowerCase());
    if (day?.toLowerCase() == "monday") {
      setState(() {
        model = BAE2().monday;
      });
    } else if (day?.toLowerCase() == "tuesday") {
      setState(() {
        model = BAE2().tuesday;
      });
    } else if (day?.toLowerCase() == "wednesday") {
      setState(() {
        model = BAE2().wednesday;
      });
    } else if (day?.toLowerCase() == 'thursday') {
      setState(() {
        model = BAE2().thursday;
      });
    } else if (day?.toLowerCase() == 'friday') {
      setState(() {
        model = BAE2().friday;
      });
    }
  }
}
