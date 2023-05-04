import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/app_color.dart';
import '../../../resources/assets.gen.dart';
import '../../../widgets/boosy_spacer.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: BoosySpacer.medium.space),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (Platform.isIOS)
            Expanded(
              flex: 1,
              child: SocialButtonWidget(
                color: AppColor.greyAppleBackground,
                icon: Assets.svg.apple.svg(),
                onClick: () {},
              ),
            ),
          if (Platform.isIOS) BoosyHorizontalSpacer.medium(),
          Expanded(
            flex: 1,
            child: SocialButtonWidget(
              color: AppColor.greyText,
              icon: Assets.svg.google.svg(
                width: 25.w,
                height: 25.w,
                color: AppColor.white,
              ),
              onClick: () {},
            ),
          ),
          BoosyHorizontalSpacer.medium(),
          Expanded(
            flex: 1,
            child: SocialButtonWidget(
              color: AppColor.facebookBackground,
              icon: Assets.svg.facebook.svg(),
              onClick: () {},
            ),
          ),
          BoosyHorizontalSpacer.medium(),
          Expanded(
            flex: 1,
            child: SocialButtonWidget(
              color: AppColor.twitterBackground,
              icon: Assets.svg.twitter.svg(),
              onClick: () {},
            ),
          )
        ],
      ),
    );
  }
}

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    Key? key,
    required this.color,
    required this.icon,
    required this.onClick,
  }) : super(key: key);

  final Color color;
  final Widget icon;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 44.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.r),
        ),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}
