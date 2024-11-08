import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

onBoardingFunc() {
  getIt<CacheHelper>().saveData(
    key: "isVisited",
    value: true,
  );
}
