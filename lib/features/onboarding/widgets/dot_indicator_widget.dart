import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/app_color.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 12.w,
      width: 12.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.red : AppColor.grey56,
      ),
    );
  }
}
