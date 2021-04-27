import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/process_indicator/process_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;
  const QuestionIndicatorWidget({
    key,
    @required this.length,
    @required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Questão $currentPage",
              style: AppTextStyles.body,
            ),
            Text(
              "$currentPage de $length",
              style: AppTextStyles.body,
            ),
          ],
        ),
        SizedBox(height: 16),
        ProcessIndicatoWidget(value: currentPage / length)
      ]),
    );
  }
}
