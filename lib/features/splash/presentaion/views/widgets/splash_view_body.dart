import 'package:bookly/core/utils/assets.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToHomeWithAnimathion();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsData.splashPhoto),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void navigateToHomeWithAnimathion() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push('/homeView');
    });
  }
}
