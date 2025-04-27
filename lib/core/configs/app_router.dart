import 'package:go_router/go_router.dart';
import 'package:store_app/features/auth/presentation/views/signin_email.dart';
import 'package:store_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSigninEmailView = '/signinEmailView';

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
    ],
  );
}
