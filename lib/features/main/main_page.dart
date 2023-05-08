import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:good_doctor/generated/app_router.dart';

import '../../generated/locale_keys.g.dart';
import '../../resources/app_color.dart';
import '../../resources/assets.gen.dart';
import '../../widgets/boosy_spacer.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: AppColor.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context, tabsRouter) => AnimatedBottomNavigationBar.builder(
        itemCount: _navBarsItems(context).length,
        tabBuilder: (index, isActive) {
          return _navBarsItems(
            context,
            color: isActive ? AppColor.activeNav : AppColor.greyCB,
          )[index];
        },
        onTap: (index) => tabsRouter.setActiveIndex(index),
        height: kBottomNavigationBarHeight,
        gapLocation: GapLocation.none,
        activeIndex: tabsRouter.activeIndex,
        notchSmoothness: NotchSmoothness.defaultEdge,
        backgroundColor: AppColor.white,
        elevation: 6,
      ),
      routes: _listBottomNavRoutes(),
    );
  }

  List<PageRouteInfo> _listBottomNavRoutes() {
    return const [
      HomeRoute(),
      MedicineRoute(),
      ContactRoute(),
      NotificationRoute(),
      ProfileRoute(),
    ];
  }

  List<Widget> _navBarsItems(BuildContext context, {Color? color}) {
    return [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.home.svg(color: color),
          BoosyVerticalSpacer.small(),
          Text(
            LocaleKeys.home.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.medicine.svg(color: color),
          BoosyVerticalSpacer.small(),
          Text(
            LocaleKeys.revenue.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.contact.svg(color: color),
          BoosyVerticalSpacer.small(),
          Text(
            LocaleKeys.booking.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.bell.svg(color: color),
          BoosyVerticalSpacer.small(),
          Text(
            LocaleKeys.booking.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.profile.svg(color: color),
          BoosyVerticalSpacer.small(),
          Text(
            LocaleKeys.booking.tr(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
          ),
        ],
      ),
    ];
  }
}
