import 'package:auto_route/auto_route.dart';
import 'package:good_doctor/features/login/login_page.dart';
import 'package:good_doctor/features/main/pages/contact/contact_page.dart';
import 'package:good_doctor/features/main/pages/home/home_page.dart';
import 'package:good_doctor/features/main/pages/medicine/medicine_page.dart';
import 'package:good_doctor/features/main/pages/notification/notification_page.dart';
import 'package:good_doctor/features/main/pages/profile/profile_page.dart';
import 'package:good_doctor/features/onboarding/on_boarding_page.dart';
import '../features/main/main_page.dart';
import '../features/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: '/'),
    CustomRoute(page: OnboardingRoute.page, transitionsBuilder: TransitionsBuilders.slideLeft),
    CustomRoute(page: LoginRoute.page, transitionsBuilder: TransitionsBuilders.slideLeft),
    AutoRoute(
      page: MainRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page, path: ''),
        AutoRoute(page: MedicineRoute.page),
        AutoRoute(page: ContactRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
  ];
}
