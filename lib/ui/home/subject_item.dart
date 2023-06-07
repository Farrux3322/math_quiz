import 'package:flutter/material.dart';
import 'package:math_quiz/utils/colors.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({Key? key, required this.color, required this.subjectTitle, required this.level, required this.time, required this.onTab, required this.questionCount}) : super(key: key);

  final Color color;
  final String subjectTitle;
  final String level;
  final String time;
  final VoidCallback onTab;
  final String questionCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
      child: Ink(
        height: MediaQuery.of(context).size.height/7,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.C_162023.withOpacity(0.3),
              spreadRadius: 12,
              blurRadius: 10,
            )
          ]
        ),
        child: InkWell(
          onTap: onTab,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(subjectTitle,style: Theme.of(context).textTheme.displaySmall,),
                    Text(time,style: Theme.of(context).textTheme.headlineSmall,),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(level,style: Theme.of(context).textTheme.headlineSmall),
                    Text(questionCount,style: Theme.of(context).textTheme.headlineSmall),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
