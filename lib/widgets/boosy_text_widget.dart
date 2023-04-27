import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/app_color.dart';

class BoosyText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;

  const BoosyText._(
    this.text, {
    required this.textStyle,
    required this.overflow,
    this.textAlign,
    this.maxLines,
    Key? key,
  }) : super(key: key);

  factory BoosyText.header(
    String text, {
    Color? color,
    TextOverflow? overflow,
    TextAlign? textAlign,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 27.sp,
          color: color ?? AppColor.white,
          fontWeight: FontWeight.w800,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.title(
    String text, {
    Color? color,
    TextOverflow? overflow,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int? maxLines,
    bool? underline,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 16.sp,
          color: color ?? AppColor.white,
          fontWeight: fontWeight,
          decoration: underline == true ? TextDecoration.underline : TextDecoration.none,
        ),
        overflow: overflow,
        textAlign: textAlign,
        maxLines: maxLines,
      );

  factory BoosyText.textMedium(
    String text, {
    Color? color,
    TextOverflow? overflow,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int? maxLines,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          color: color ?? AppColor.white,
          fontWeight: fontWeight,
        ),
        overflow: overflow,
        textAlign: textAlign,
        maxLines: maxLines,
      );

  factory BoosyText.textSmall(
    String text, {
    Color? color,
    TextOverflow? overflow,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int? maxLines,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.inter(
          fontSize: 13.sp,
          color: color ?? AppColor.white,
          fontWeight: fontWeight,
        ),
        overflow: overflow,
        textAlign: textAlign,
        maxLines: maxLines,
      );

  factory BoosyText.heading3(
    String text, {
    Color? color,
    TextOverflow? overflow,
    bool? isBoldText,
    TextAlign? textAlign,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 20,
          color: color ?? AppColor.black,
          fontWeight: isBoldText == true ? FontWeight.w700 : FontWeight.normal,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.heading4(
    String text, {
    Color? color,
    TextOverflow? overflow,
    bool? isBoldText,
    TextAlign? textAlign,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 18,
          color: color ?? AppColor.black,
          fontWeight: isBoldText == true ? FontWeight.w700 : FontWeight.normal,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.heading5(
    String text, {
    Color? color,
    TextOverflow? overflow,
    bool? isBoldText,
    TextAlign? textAlign,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 16,
          color: color ?? AppColor.black,
          fontWeight: isBoldText == true ? FontWeight.w700 : FontWeight.normal,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.heading6(
    String text, {
    Color? color,
    TextOverflow? overflow,
    bool? isBoldText,
    TextAlign? textAlign,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 14,
          color: color ?? AppColor.black,
          fontWeight: isBoldText == true ? FontWeight.w700 : FontWeight.normal,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.heading7(
    String text, {
    Color? color,
    TextOverflow? overflow,
    bool? isBoldText,
    TextAlign? textAlign,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 13,
          color: color ?? AppColor.black,
          fontWeight: isBoldText == true ? FontWeight.w700 : FontWeight.normal,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.heading8(
    String text, {
    Color? color,
    TextOverflow? overflow,
    bool? isBoldText,
    TextAlign? textAlign,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 11,
          color: color ?? AppColor.black,
          fontWeight: isBoldText == true ? FontWeight.w700 : FontWeight.normal,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.subTitle1(
    String text, {
    Color? color,
    TextOverflow? overflow,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 16,
          color: color ?? AppColor.black,
          fontWeight: FontWeight.w400,
        ),
        overflow: overflow,
      );

  factory BoosyText.buttonText(
    String text, {
    Color? color,
    double? height,
    double? fontSize,
    TextOverflow? overflow,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          color: color ?? AppColor.black,
          height: height,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w700,
        ),
        overflow: overflow,
      );

  factory BoosyText.customInterText(
    String text, {
    Color? color,
    double? height,
    int? maxLines,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextOverflow? overflow,
    TextAlign? textAlign,
    TextDecoration? decoration,
    Paint? foreground,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.inter(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height,
          decoration: decoration,
          foreground: foreground,
        ),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.customSyneText(
    String text, {
    Color? color,
    double? height,
    int? maxLines,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextOverflow? overflow,
    TextAlign? textAlign,
    TextDecoration? decoration,
    Paint? foreground,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height,
          decoration: decoration,
          foreground: foreground,
        ),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      );

  factory BoosyText.subText(
    String text, {
    TextOverflow? overflow,
    Color? color,
    TextAlign? textAlign,
  }) =>
      BoosyText._(
        text,
        textStyle: GoogleFonts.syne(
          fontSize: 14,
          color: color,
        ),
        overflow: overflow,
        textAlign: textAlign,
      );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
