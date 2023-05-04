import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/app_color.dart';

class BoosyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final double? borderWidth;
  final Color? borderColor;
  final double? borderRadius;
  final double? elevation;
  final Widget? customChild;

  // Constructor
  const BoosyButton._({
    Key? key,
    this.onPressed,
    this.backgroundColor = AppColor.primaryColor,
    required this.text,
    this.textColor,
    this.padding,
    this.textStyle,
    this.borderWidth,
    this.borderColor,
    this.borderRadius,
    this.elevation,
    this.customChild,
  }) : super(key: key);

  factory BoosyButton.primary(
    String text, {
    required VoidCallback? onPressed,
    required BuildContext context, // find a better way to access Theme.
    TextStyle? textStyle,
    EdgeInsets? padding,
    FontWeight? fontWeight,
    Key? key,
  }) {
    if (onPressed == null) return BoosyButton.disabled(text, context: context);
    return BoosyButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      textStyle: textStyle ??
          Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: AppColor.white,
              ),
      padding: padding ?? EdgeInsets.symmetric(vertical: 12.h),
    );
  }

  factory BoosyButton.primary2(
    String text, {
    required VoidCallback? onPressed,
    required BuildContext context, // find a better way to access Theme.
    TextStyle? textStyle,
    EdgeInsets? padding,
    FontWeight? fontWeight,
    Key? key,
  }) {
    if (onPressed == null) {
      return BoosyButton._(
        key: key,
        text: text,
        onPressed: onPressed,
        borderColor: Theme.of(context).primaryColor,
        textStyle: textStyle ??
            Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  color: Theme.of(context).primaryColor,
                ),
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
      );
    } else {
      return BoosyButton._(
        key: key,
        text: text,
        onPressed: onPressed,
        textStyle: textStyle ??
            Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  color: AppColor.white,
                ),
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
      );
    }
  }

  factory BoosyButton.outlined(
    String text, {
    required VoidCallback? onPressed,
    required BuildContext context, // find a better way to access Theme.
    TextStyle? textStyle,
    EdgeInsets? padding,
    FontWeight? fontWeight,
    Color? buttonColor,
    Key? key,
  }) {
    if (onPressed == null) return BoosyButton.disabled(text, context: context);
    return BoosyButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      backgroundColor: AppColor.white,
      borderColor: buttonColor ?? Theme.of(context).primaryColor,
      textStyle: textStyle ??
          Theme.of(context).textTheme.labelLarge!.copyWith(
                color: buttonColor ?? Theme.of(context).primaryColor,
              ),
      padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
      elevation: 0,
    );
  }

  factory BoosyButton.disabled(
    String text, {
    required BuildContext context,
    TextStyle? style,
    Key? key,
  }) {
    return BoosyButton._(
      key: key,
      text: text,
      backgroundColor: AppColor.white,
      textStyle: style ??
          Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: AppColor.white,
              ),
      borderColor: AppColor.transparent,
      padding: const EdgeInsets.symmetric(vertical: 12),
    );
  }

  factory BoosyButton.primaryDark(
    String text, {
    required BuildContext context,
    required VoidCallback? onPressed,
    TextStyle? textStyle,
    EdgeInsets? padding,
    Key? key,
  }) {
    if (onPressed == null) return BoosyButton.disabled(text, context: context);
    return BoosyButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      backgroundColor: AppColor.black,
      textStyle: textStyle ?? Theme.of(context).textTheme.labelLarge,
      padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
    );
  }

  factory BoosyButton.transparent(
    String text, {
    required BuildContext context,
    required VoidCallback? onPressed,
    TextStyle? textStyle,
    EdgeInsets? padding,
    Key? key,
  }) =>
      BoosyButton._(
        key: key,
        text: text,
        onPressed: onPressed,
        backgroundColor: AppColor.white,
        borderColor: AppColor.white,
        elevation: 0,
        textStyle: textStyle ?? Theme.of(context).textTheme.labelLarge,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
      );

  ///[*** Button text will be disable if customChild is not null]
  factory BoosyButton.custom(
    String text, {
    required BuildContext context,
    required VoidCallback? onPressed,
    Widget? customChild,
    Color? textColor,
    Color? backgroundColor,
    EdgeInsets? padding,
    TextStyle? textStyle,
    double? borderWidth,
    Color? borderColor,
    double? borderRadius,
    Key? key,
  }) =>
      BoosyButton._(
        key: key,
        text: text,
        onPressed: onPressed,
        customChild: customChild,
        backgroundColor: backgroundColor ?? AppColor.black,
        textColor: textColor ?? AppColor.white,
        textStyle: textStyle ?? Theme.of(context).textTheme.labelLarge,
        borderRadius: borderRadius,
        borderColor: borderColor,
        borderWidth: borderWidth,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
      );

  static final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: AppColor.white,
    // backgroundColor: AppColor.primaryColor,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.all(16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );

  // UI
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
