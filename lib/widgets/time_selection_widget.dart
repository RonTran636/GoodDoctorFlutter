import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/locale_keys.g.dart';
import '../resources/app_color.dart';
import '../resources/assets.gen.dart';
import 'boosy_spacer.dart';
import 'home_button_widget.dart';

enum PrefixTime {
  week,
  month,
  year,
}

class TimeSelectionWidget extends StatefulWidget {
  const TimeSelectionWidget({
    Key? key,
    required this.initialValue,
    required this.onPrefixTimeSelect,
    required this.onDayRangeSelect,
  }) : super(key: key);

  final PrefixTime initialValue;
  final ValueChanged<PrefixTime> onPrefixTimeSelect;
  final VoidCallback onDayRangeSelect;

  @override
  State<TimeSelectionWidget> createState() => _TimeSelectionWidgetState();
}

class _TimeSelectionWidgetState extends State<TimeSelectionWidget> {
  late PrefixTime currentSelect = widget.initialValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: InkWell(
            onTap: () => setState(() {
              currentSelect = PrefixTime.week;
              widget.onPrefixTimeSelect(PrefixTime.week);
            }),
            child: HomeButtonWidget(
              label: LocaleKeys.week.tr(),
              isSelecting: currentSelect == PrefixTime.week,
            ),
          ),
        ),
        BoosyHorizontalSpacer.custom(width: 10.w),
        Flexible(
          flex: 2,
          child: InkWell(
            onTap: () => setState(() {
              currentSelect = PrefixTime.month;
              widget.onPrefixTimeSelect(PrefixTime.month);
            }),
            child: HomeButtonWidget(
              label: LocaleKeys.month.tr(),
              isSelecting: currentSelect == PrefixTime.month,
            ),
          ),
        ),
        BoosyHorizontalSpacer.custom(width: 10.w),
        Flexible(
          flex: 2,
          child: InkWell(
            onTap: () => setState(() {
              currentSelect = PrefixTime.year;
              widget.onPrefixTimeSelect(PrefixTime.year);
            }),
            child: HomeButtonWidget(
              label: LocaleKeys.year.tr(),
              isSelecting: currentSelect == PrefixTime.year,
            ),
          ),
        ),
        BoosyHorizontalSpacer.custom(width: 10.w),
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.transparent,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: AppColor.white),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
            child: Center(child: Assets.svg.calendar.svg()),
          ),
        ),
      ],
    );
  }
}
