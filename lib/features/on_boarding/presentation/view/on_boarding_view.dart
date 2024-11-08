// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dalel/features/on_boarding/presentation/widgets/buttons_view.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/nav_bar_on_boarding.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_widget_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 24,
            ),
            NavBarOnBoarding(),
            SizedBox(
              height: 32,
            ),
            OnBoardingWidgetBody(
              controller: controller,
              onPageChange: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            ButtonsView(controller: controller, currentPage: currentPage,),
            SizedBox(
              height: 88,
            ),
            
            SizedBox(
              height: 17,
            ),
          ],
        ),
      )),
    );
  }
}
