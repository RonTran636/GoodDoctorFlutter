import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'boosy_text_widget.dart';
import '../resources/app_color.dart';

class HomeButtonWidget extends StatelessWidget {
  const HomeButtonWidget({
    Key? key,
    required this.label,
    this.isSelecting = false,
  }) : super(key: key);

  final String label;
  final bool isSelecting;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelecting ? AppColor.white : AppColor.transparent,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColor.white),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
      child: Center(
        child: BoosyText.title(
          label,
          fontWeight: isSelecting ? FontWeight.bold : FontWeight.normal,
          color: isSelecting ? AppColor.black : AppColor.white,
        ),
      ),
    );
  }
}
