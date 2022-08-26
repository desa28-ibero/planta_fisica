import '../ui/home/home_screen.dart';
import '../ui/login/login_screen.dart';
import '../ui/splash/splash_screen.dart';

class RoutePaths {
  RoutePaths._();

  static const splash = '/';
  static const login = '/login';
  static const home = '/home';
}

final routes = {
  RoutePaths.splash: (_) => const SplashScreen(),
  RoutePaths.login: (_) => LoginScreen(),
  RoutePaths.home: (_) => const HomeScreen(),
};
