import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:suuz/Navigation/home.dart';
import 'package:suuz/additional/batch.dart';
import 'package:suuz/additional/year.dart';
import 'package:suuz/provider/db_provider.dart';
import 'package:suuz/theme/colors.dart';
import 'package:suuz/util/button.dart';
import 'package:suuz/util/textField.dart';

import '../style/appBar.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController surName = TextEditingController();
  TextEditingController faculty = TextEditingController();
  TextEditingController year = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        foregroundColor: white,
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text(
          "Register".toUpperCase(),
          style: appBarStyle,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/sharda/campus.jpg'),
              opacity: 0.25,
              fit: BoxFit.cover),
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                child: Image.asset("image/sharda/logo_sharda.png"),
              ),
              formField(controller: name, label: "Name", context: context),
              formField(
                  controller: surName, label: "Surname", context: context),
              formField(
                controller: faculty,
                label: "Faculty",
                context: context,
                readOnly: true,
                onPressed: () => Navigator.push(
                    context,
                    PageTransition(
                        child: Batch(faculty: faculty),
                        type: PageTransitionType.fade)),
              ),
              formField(
                controller: year,
                label: "Year",
                context: context,
                readOnly: true,
                onPressed: () => Navigator.push(
                    context,
                    PageTransition(
                        child: Year(year: year),
                        type: PageTransitionType.fade)),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75),
                child: button(
                    name: "Save",
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        DatabaseProvider().saveFirsTime(false);
                        DatabaseProvider().saveName(name.text.trim());
                        DatabaseProvider().saveSurName(surName.text.trim());
                        DatabaseProvider().saveFaculty(faculty.text.trim());
                        DatabaseProvider().saveYear(year.text.trim());
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                child: Home(), type: PageTransitionType.fade),
                            (route) => false);
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
