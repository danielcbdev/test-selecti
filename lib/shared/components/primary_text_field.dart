import 'package:flutter/material.dart';
import 'package:test_selecti/shared/theme/app_colors.dart';

class PrimaryTextField extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final Function()? onTap;
  final bool? isObscureText;
  const PrimaryTextField({
    Key? key,
    this.label,
    this.controller,
    this.inputType,
    this.isObscureText,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.colorBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: TextFormField(
          maxLines: isObscureText == null ? null : isObscureText! ? 1 : null,
          obscureText: isObscureText == null ? false : isObscureText! ? true : false,
          keyboardType: inputType,
          controller: controller,
          cursorColor: Theme.of(context).cursorColor,
          onTap: onTap,
          decoration: InputDecoration(
            labelText: label!,
            labelStyle: const TextStyle(
              color: Color(0xFF5F5C5C),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFffffff)),
            ),
          ),
        ),
      ),
    );
  }
}
