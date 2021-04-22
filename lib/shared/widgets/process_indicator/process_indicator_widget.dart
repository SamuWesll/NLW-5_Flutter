import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class ProcessIndicatoWidget extends StatelessWidget {
  final double value;
  const ProcessIndicatoWidget({key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
