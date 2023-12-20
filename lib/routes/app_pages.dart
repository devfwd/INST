
import 'package:get/get.dart';
import 'package:institute/bindings/splash_binding.dart';
import 'package:institute/views/Pages/signin/signin.dart';
import 'package:institute/views/Pages/splash/splashScreen.dart';
part 'app_routes.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.signIn,
      page: () =>  const ScreenSignIn(),
    ),

  ];
}
