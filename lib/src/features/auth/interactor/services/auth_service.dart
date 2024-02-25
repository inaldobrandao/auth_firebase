import 'package:auth_firebase/src/features/auth/interactor/dtos/email_credential_dto.dart';

import '../states/auth_state.dart';

abstract class AuthService {
  Future<AuthState> loginWithEmail(EmailCredentialDTO dto);
  Future<AuthState> logout();
  Future<AuthState> checkAuth();
}
