import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:good_doctor/resources/app_color.dart';

import 'generated/app_router.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();

    return EasyLocalization(
      startLocale: const Locale('en'),
      supportedLocales: const [Locale('en')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(393, 852), //Iphone X screen size, match Figma
        builder: (context, state) => MaterialApp.router(
          debugShowCheckedModeBanner: kDebugMode,
          routerDelegate: AutoRouterDelegate(router),
          routeInformationParser: router.defaultRouteParser(),
          locale: context.locale,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColor.white,
            appBarTheme: const AppBarTheme(color: AppColor.transparent),
          ),
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
        ),
      ),
    );
  }
}
