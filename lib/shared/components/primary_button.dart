import 'package:flutter/material.dart';
import 'package:test_selecti/shared/theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final Function()? press;
  final Color? color, textColor;
  final double? width;
  const PrimaryButton({
    Key? key,
    this.text,
    this.press,
    this.color = AppColors.colorPrimary,
    this.textColor = Colors.white,
    this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text!,
        style: TextStyle(color: textColor),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}