import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/app_color.dart';
import '../widgets/boosy_spacer.dart';

//ignore_for_file: unused_element
class BoosyTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final bool readOnly;
  final Function(String)? onChanged;
  final Function(String)? onFieldSummit;
  final double borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final TextEditingController? controller;
  final TextStyle? hintTextStyle;
  final Color? backgroundColor;
  final bool autoFocus;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final int? maxLength;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool obscureText;
  final bool enable;
  final Widget? suffixIcon;
  final Widget? leadingIcon;
  final Widget? suffix;
  final String? errorText;
  final int? minLines;

  const BoosyTextField._({
    Key? key,
    required this.onChanged,
    required this.label,
    this.controller,
    this.onFieldSummit,
    this.hintText,
    this.readOnly = false,
    this.autoFocus = false,
    this.borderRadius = 4.0,
    this.borderColor,
    this.borderWidth,
    this.hintTextStyle,
    this.backgroundColor = AppColor.blackBackground,
    this.textCapitalization = TextCapitalization.sentences,
    this.textInputAction,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
    this.maxLength,
    this.obscureText = false,
    this.enable = true,
    this.suffixIcon,
    this.leadingIcon,
    this.suffix,
    this.errorText,
    this.minLines,
  }) : super(key: key);

  factory BoosyTextField.primary({
    ValueChanged<String>? onChanged,
    required String hintText,
    required String label,
    TextEditingController? controller,
    bool? obscureText,
    Widget? suffixIcon,
    Widget? leadingIcon,
    String? errorText,
    int? maxLines,
    int? minLines,
  }) =>
      BoosyTextField._(
        label: label,
        onChanged: onChanged,
        controller: controller,
        borderWidth: 1.5,
        hintText: hintText,
        fontWeight: FontWeight.normal,
        obscureText: obscureText ?? false,
        maxLines: maxLines ?? minLines ?? 1,
        minLines: minLines ?? 1,
        suffixIcon: suffixIcon,
        leadingIcon: leadingIcon,
        errorText: errorText,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2 * BoosySpacer.medium.space),
          child: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: AppColor.textBlack,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        BoosyVerticalSpacer.small(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: BoosySpacer.medium.space),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: TextFormField(
            textCapitalization: TextCapitalization.none,
            readOnly: readOnly,
            enabled: enable,
            textInputAction: textInputAction,
            keyboardType: TextInputType.multiline,
            maxLines: maxLines,
            minLines: minLines,
            obscureText: obscureText,
            maxLength: maxLength,
            autofocus: autoFocus,
            style: GoogleFonts.syne(
              color: AppColor.primaryColor,
              fontSize: fontSize ?? 14.sp,
              fontWeight: fontWeight ?? FontWeight.w600,
            ),
            controller: controller,
            onChanged: onChanged,
            onFieldSubmitted: onFieldSummit,
            cursorColor: AppColor.black,
            decoration: InputDecoration(
              hintText: hintText,
              hintMaxLines: 1,
              border: InputBorder.none,
              suffix: suffix,
              suffixIcon: suffixIcon,
              prefixIcon: leadingIcon,
              contentPadding: const EdgeInsets.only(left: 12, top: 15, bottom: 15),
              hintStyle: hintTextStyle ??
                  GoogleFonts.syne(
                    fontSize: 14.sp,
                    color: Colors.grey[500],
                  ),
            ),
          ),
        ),
        if (errorText != null)
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: BoosySpacer.small.space),
            child: Text(
              errorText!,
              style: GoogleFonts.syne(
                fontSize: 10.sp,
                color: AppColor.errorRed,
              ),
              textAlign: TextAlign.end,
            ),
          )
      ],
    );
  }
}
