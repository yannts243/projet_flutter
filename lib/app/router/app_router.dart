import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../../features/authentication/presentation/pages/login_page.dart';
import '../../features/authentication/presentation/pages/register_page.dart';

abstract final class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppConstants.loginPath,
    routes: [
      GoRoute(
        path: AppConstants.loginPath,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppConstants.registerPath,
        builder: (context, state) => const RegisterPage(),
      ),
    ],
  );
}
