import '../widgets/boosy_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/app_color.dart';


class BoosyListTile extends StatelessWidget {
  const BoosyListTile({
    Key? key,
    required this.titleText,
    this.subTitleText,
    this.leading,
    this.trailing,
    this.onTap,
    this.padding,
  }) : super(key: key);

  final Widget? leading;
  final String titleText;
  final String? subTitleText;
  final Widget? trailing;
  final VoidCallback? onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColor.black38.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ListTile(
        onTap: onTap,
        leading: SizedBox(width: 40.w, height: 40.w, child: leading),
        title: BoosyText.customInterText(
          titleText,
          fontSize: 13.sp,
          color: AppColor.white,
        ),
        minLeadingWidth: 40.w,
        subtitle: subTitleText == null
            ? null
            : BoosyText.customInterText(
                subTitleText!,
                fontSize: 10.sp,
                color: AppColor.white,
              ),
        dense: true,
        trailing: trailing ??
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColor.white,
              size: 18.w,
            ),
      ),
    );
  }
}
