import 'package:auth_firebase/src/features/splash/ui/page/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/auth/auth_module.dart';
import 'features/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        AuthModule(),
        HomeModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.child('/splash', child: (_) => const SplashPage());
    r.module('/home', module: HomeModule());
    r.module('/auth', module: AuthModule());
  }
}
