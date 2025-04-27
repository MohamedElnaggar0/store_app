import 'package:go_router/go_router.dart';
import 'package:store_app/features/auth/presentation/views/signin_email_view.dart';
import 'package:store_app/features/auth/presentation/views/signin_password_view.dart';
import 'package:store_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSigninEmailView = '/signinEmailView';
  static const kSigninPasswordView = '/signinPasswordView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSigninEmailView,
        builder: (context, state) => const SigninEmailView(),
      ),
      GoRoute(
        path: kSigninPasswordView,
        builder: (context, state) => const SigninPasswordView(),
      ),
    ],
  );
}
