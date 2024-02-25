import 'package:asp/asp.dart';
import 'package:auth_firebase/src/features/auth/interactor/atoms/auth_atom.dart';
import 'package:auth_firebase/src/features/auth/interactor/states/auth_state.dart';

import '../services/auth_service.dart';

class AuthReduce extends Reducer {
  final AuthService service;

  AuthReduce(this.service) {
    on(() => [checkAuthAction], _checkAuth);
    on(() => [loginWithEmailAction], _loginWithEmail);
    on(() => [logoutAction], _logout);
  }

  _checkAuth() {
    authState.value = Loading();
    service.checkAuth().then(authState.setValue);
  }

  _loginWithEmail() {
    authState.value = Loading();
    final dto = loginWithEmailAction.value!;
    service.loginWithEmail(dto).then(authState.setValue);
  }

  _logout() {
    authState.value = Loading();
    service.logout().then(authState.setValue);
  }
}
