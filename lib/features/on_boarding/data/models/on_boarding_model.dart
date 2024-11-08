import 'package:dalel/core/utils/app_assets.dart';

class OnBoardingModel {
  final String pathimg;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.pathimg, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingModel = [
  OnBoardingModel(
      pathimg: Assets.imgOnBoarding1,
      title: "Explore The history with Dalel in a smart way",
      subTitle:
          "Using our app’s history libraries you can find many historical periods"),
  OnBoardingModel(
      pathimg: Assets.imgOnBoarding2,
      title: "From every place on earth",
      subTitle: "A big variety of ancient places from all over the world"),
  OnBoardingModel(
      pathimg: Assets.imgOnBoarding3,
      title: "Using modern AI technology for better user experience",
      subTitle:
          "AI provide recommendations and helps you to continue the search journey"),
];
