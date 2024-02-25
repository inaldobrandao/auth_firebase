import 'package:auth_firebase/src/features/auth/data/services/firebase_auth_service.dart';
import 'package:auth_firebase/src/features/auth/interactor/reducers/auth_reducer.dart';
import 'package:auth_firebase/src/features/auth/interactor/services/auth_service.dart';
import 'package:auth_firebase/src/features/auth/ui/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addInstance(FirebaseAuth.instance);
    i.add<AuthService>(FirebaseAuthService.new);
    i.addSingleton(AuthReduce.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/login',
      child: (_) => const LoginPage(),
    );
  }
}
