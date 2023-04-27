import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum BoosySpacer {
  zero(0),
  extraSmall(4),
  small(8),
  medium(16),
  extraMedium(18),
  large(32),
  extraLarge(40);

  final double space;

  const BoosySpacer(this.space);
}

class BoosyVerticalSpacer extends StatelessWidget {
  final double space;

  const BoosyVerticalSpacer._({
    Key? key,
    required this.space,
  }) : super(key: key);

  factory BoosyVerticalSpacer.zero() => BoosyVerticalSpacer._(space: BoosySpacer.zero.space.h);

  factory BoosyVerticalSpacer.extraSmall() =>
      BoosyVerticalSpacer._(space: BoosySpacer.extraSmall.space.h);

  factory BoosyVerticalSpacer.small() => BoosyVerticalSpacer._(space: BoosySpacer.small.space.h);

  factory BoosyVerticalSpacer.medium() => BoosyVerticalSpacer._(space: BoosySpacer.medium.space.h);

  factory BoosyVerticalSpacer.extraMedium() =>
      BoosyVerticalSpacer._(space: BoosySpacer.extraMedium.space.h);

  factory BoosyVerticalSpacer.large() => BoosyVerticalSpacer._(space: BoosySpacer.large.space.h);

  factory BoosyVerticalSpacer.extraLarge() =>
      BoosyVerticalSpacer._(space: BoosySpacer.extraLarge.space.h);

  factory BoosyVerticalSpacer.custom({required double height}) =>
      BoosyVerticalSpacer._(space: height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: space);
  }
}

class BoosyHorizontalSpacer extends StatelessWidget {
  final double space;

  const BoosyHorizontalSpacer._({
    Key? key,
    required this.space,
  }) : super(key: key);

  factory BoosyHorizontalSpacer.zero() => BoosyHorizontalSpacer._(space: BoosySpacer.zero.space.w);

  factory BoosyHorizontalSpacer.extraSmall() =>
      BoosyHorizontalSpacer._(space: BoosySpacer.extraSmall.space.w);

  factory BoosyHorizontalSpacer.small() =>
      BoosyHorizontalSpacer._(space: BoosySpacer.small.space.w);

  factory BoosyHorizontalSpacer.medium() =>
      BoosyHorizontalSpacer._(space: BoosySpacer.medium.space.w);

  factory BoosyHorizontalSpacer.extraMedium() =>
      BoosyHorizontalSpacer._(space: BoosySpacer.extraMedium.space.w);

  factory BoosyHorizontalSpacer.large() =>
      BoosyHorizontalSpacer._(space: BoosySpacer.large.space.w);

  factory BoosyHorizontalSpacer.extraLarge() =>
      BoosyHorizontalSpacer._(space: BoosySpacer.extraLarge.space.w);

  factory BoosyHorizontalSpacer.custom({required double width}) =>
      BoosyHorizontalSpacer._(space: width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: space);
  }
}
