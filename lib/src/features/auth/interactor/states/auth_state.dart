import 'package:auth_firebase/src/features/auth/interactor/entities/tokenization.dart';

sealed class AuthState {}

class InitAuth implements AuthState {}

class Loading implements AuthState {}

class Logged implements AuthState {
  final Tokenization token;

  Logged(this.token);
}

class Unlogged implements AuthState {}
