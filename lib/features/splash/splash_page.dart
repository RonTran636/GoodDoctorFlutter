import 'package:flutter/material.dart';
import 'package:good_doctor/generated/app_router.dart';
import 'package:good_doctor/injection_container.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 1500),
      () => getIt<AppRouter>().push(const OnboardingRoute()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
