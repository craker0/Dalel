import 'package:dalel/features/auth/presentation/views/signin_view.dart';
import 'package:dalel/features/auth/presentation/views/signup_view.dart';
import 'package:dalel/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:dalel/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/OnBoarding',
    builder: (context, state) => const OnBoardingView(),
  ) , GoRoute(
    path: '/SignIn',
    builder: (context, state) => const SigninView(),
  ) , GoRoute(
    path: '/SignUp',
    builder: (context, state) => const SignupView(),
  )
]);
