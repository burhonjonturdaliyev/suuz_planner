import 'package:flutter/material.dart';
import 'package:suuz/admin/model/categories_of_admin_model.dart';
import 'package:suuz/theme/colors.dart';

import '../widget/admin_info.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  List<CategoriesOfAdmin> model = [
    CategoriesOfAdmin(
        name: 'Admins', imagePath: 'image/Icon/admin.png', color: Colors.brown),
    CategoriesOfAdmin(
        name: 'Teachers',
        imagePath: 'image/Icon/teacher.png',
        color: Colors.purple),
    CategoriesOfAdmin(
        name: 'Students',
        imagePath: 'image/Icon/student.png',
        color: Colors.blue),
    CategoriesOfAdmin(
        name: 'Chat', imagePath: 'image/Icon/chat.png', color: Colors.teal),
    CategoriesOfAdmin(
        name: 'Monitoring',
        imagePath: 'image/Icon/analytics.png',
        color: Colors.orange),
    CategoriesOfAdmin(
        name: 'Events',
        imagePath: 'image/Icon/events.png',
        color: Colors.indigoAccent),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: transparent,
        body: Column(
          children: [
            adminInfo(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of items in a row
                      mainAxisSpacing: 50, // Spacing between rows
                    ),
                    itemCount: model.length,
                    itemBuilder: (context, index) => design(model[index])),
              ),
            )
          ],
        ));
  }

  Widget design(CategoriesOfAdmin model) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: model.color, borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Image.asset(
              model.imagePath,
              width: 60,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(model.name)
      ],
    );
  }
}
