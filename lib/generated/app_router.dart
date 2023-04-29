import 'package:auto_route/auto_route.dart';
import 'package:good_doctor/features/login/login_page.dart';
import 'package:good_doctor/features/onboarding/on_boarding_page.dart';
import '../features/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    CustomRoute(
      page: OnboardingPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: LoginPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
