import 'package:flutter/material.dart';
import 'package:math_quiz/ui/home/subject_item.dart';
import 'package:math_quiz/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Subject"),
      ),
      body: ListView(
        children: List.generate(
            12,
            (index) => SubjectItem(
                color: AppColors.C_F2954D,
                subjectTitle: "Math",
                level: "Easy",
                time: "15:00",
                onTab: () {},
                questionCount: "15 ta savol")),
      ),
    );
  }
}
