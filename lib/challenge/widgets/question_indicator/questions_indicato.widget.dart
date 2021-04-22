import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/process_indicator/process_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Questão 04",
              style: AppTextStyles.body,
            ),
            Text(
              "de 10",
              style: AppTextStyles.body,
            ),
          ],
        ),
        SizedBox(height: 16),
        ProcessIndicatoWidget(
          value: .7,
        )
      ]),
    );
  }
}
