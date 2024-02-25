import 'package:asp/asp.dart';
import 'package:auth_firebase/src/features/auth/interactor/dtos/email_credential_dto.dart';
import '../states/auth_state.dart';

//States
final authState = Atom<AuthState>(
  InitAuth(),
  key: 'authState',
);

//Actions
final checkAuthAction = Atom.action(
  key: 'checkAuthAction',
);

final loginWithEmailAction = Atom<EmailCredentialDTO?>(
  null,
  key: 'loginWithEmailAction',
);

final logoutAction = Atom.action(
  key: 'logoutAction',
);
