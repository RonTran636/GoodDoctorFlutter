import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:good_doctor/features/login/widgets/social_login_widget.dart';
import 'package:good_doctor/generated/app_router.dart';
import 'package:good_doctor/injection_container.dart';
import 'package:good_doctor/resources/app_color.dart';
import 'package:good_doctor/resources/assets.gen.dart';
import 'package:good_doctor/widgets/boosy_button_widget.dart';
import 'package:good_doctor/widgets/boosy_spacer.dart';
import 'package:good_doctor/widgets/boosy_text_field_widget.dart';
import 'package:good_doctor/widgets/boosy_text_widget.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryDark,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                Assets.images.loginBackground.path,
                width: 1.sw,
                fit: BoxFit.fill,
              ),
              BoosyText.header(
                'Good\nDoctor',
                color: AppColor.white,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: 1.sw,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.w)),
              ),
              child: Column(
                children: [
                  BoosyVerticalSpacer.extraMedium(),
                  SizedBox(
                    width: 1.sw,
                    child: BoosyText.customInterText(
                      'Login',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  BoosyVerticalSpacer.medium(),
                  BoosyTextField.primary(
                    hintText: 'Enter your email',
                    label: 'Email',
                  ),
                  BoosyVerticalSpacer.medium(),
                  BoosyTextField.primary(
                    hintText: 'Enter your password',
                    label: 'Password',
                  ),
                  BoosyVerticalSpacer.medium(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: BoosySpacer.medium.space),
                    child: BoosyButton.primary(
                      'Login',
                      onPressed: () => getIt<AppRouter>().replace(const MainRoute()),
                      context: context,
                    ),
                  ),
                  BoosyVerticalSpacer.medium(),
                  Row(
                    children: [
                      const Expanded(child: Divider(color: AppColor.textBlack)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: BoosyText.title('or'),
                      ),
                      const Expanded(child: Divider(color: AppColor.textBlack)),
                    ],
                  ),
                  BoosyVerticalSpacer.medium(),
                  SocialLoginWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
