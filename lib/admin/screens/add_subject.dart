import 'package:flutter/material.dart';
import 'package:suuz/theme/colors.dart';

class AddSubject extends StatefulWidget {
  const AddSubject({super.key});

  @override
  State<AddSubject> createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: transparent,
      body: Center(
        child: Text('AddSubject page'),
      ),
    );
  }
}
