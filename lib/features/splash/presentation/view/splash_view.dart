import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/funcations/navigate.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isVisited = getIt<CacheHelper>().getData(key: 'isVisited')??false;
    if (isVisited == true) {
      delayedNavigate('/SignIn');
    } else {
      delayedNavigate('/OnBoarding');
    }

    super.initState();
  }

  void delayedNavigate(path) {
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      customReplaceNavigate(context, path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        AppStrings.appName,
        style: CustomTextStyles.pacifico400style64,
      )),
    );
  }
}
