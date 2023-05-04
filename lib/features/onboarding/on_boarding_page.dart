import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:good_doctor/generated/app_router.dart';
import 'package:good_doctor/injection_container.dart';

import '../../generated/locale_keys.g.dart';
import '../../resources/assets.gen.dart';
import '../../widgets/boosy_button_widget.dart';
import '../../widgets/boosy_spacer.dart';
import '../../widgets/boosy_text_widget.dart';
import 'widgets/dot_indicator_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var _currentIndex = 0;
  final _pageViewCtrl = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: BoosySpacer.medium.space),
          child: Column(
            children: [
              BoosyVerticalSpacer.custom(height: 24.h),
              Assets.svg.onboardingImage.svg(),
              BoosyVerticalSpacer.custom(height: 24.h),
              Expanded(
                child: PageView(
                  controller: _pageViewCtrl,
                  onPageChanged: (value) => setState(() {
                    _currentIndex = value;
                  }),
                  children: onboardingList
                      .map(
                        (e) => Column(
                          children: [
                            BoosyText.header(onboardingList[_currentIndex].title),
                            BoosyVerticalSpacer.custom(height: 12.h),
                            BoosyText.title(
                              onboardingList[_currentIndex].desc,
                              maxLines: 3,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
              BoosyVerticalSpacer.custom(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: onboardingList
                    .mapIndexed((index, _) => DotIndicator(isActive: index == _currentIndex))
                    .toList(),
              ),
              BoosyVerticalSpacer.custom(height: 48.h),
              BoosyButton.primary(
                LocaleKeys.next.tr(),
                onPressed: () {
                  if (_currentIndex < onboardingList.length - 1) {
                    setState(() {
                      _currentIndex++;
                      _pageViewCtrl.animateToPage(
                        _currentIndex,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    });
                  } else {
                    getIt<AppRouter>().push(const LoginRoute());
                  }
                },
                context: context,
              ),
              SizedBox(height: 75.h)
            ],
          ),
        ),
      ),
    );
  }
}

final onboardingList = [
  OnboardingDpo(
    title: LocaleKeys.onboarding_title1.tr(),
    desc: LocaleKeys.onboarding_desc1.tr(),
  ),
  OnboardingDpo(
    title: LocaleKeys.onboarding_title2.tr(),
    desc: LocaleKeys.onboarding_desc2.tr(),
  ),
  OnboardingDpo(
    title: LocaleKeys.onboarding_title3.tr(),
    desc: LocaleKeys.onboarding_desc3.tr(),
  ),
];

class OnboardingDpo {
  final String title;
  final String desc;

  OnboardingDpo({
    required this.title,
    required this.desc,
  });
}
