import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backGroundColor;
  final Color fontColor;
  final Color borderColors;
  final Color overlyColors;
  final VoidCallback onTap;

  NextButtonWidget({
    @required this.label,
    @required this.backGroundColor,
    @required this.fontColor,
    @required this.borderColors,
    @required this.overlyColors,
    @required this.onTap,
  });

  NextButtonWidget.green({@required String label, @required VoidCallback onTap})
      : this.backGroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColors = AppColors.white,
        this.overlyColors = AppColors.green,
        this.label = label,
        this.onTap = onTap;

  NextButtonWidget.white({@required String label, @required VoidCallback onTap})
      : this.backGroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColors = AppColors.border,
        this.overlyColors = AppColors.darkGreen,
        this.label = label,
        this.onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backGroundColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          side: MaterialStateProperty.all(BorderSide(color: borderColors)),
          overlayColor: MaterialStateProperty.all(overlyColors),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
