import 'package:asp/asp.dart';
import 'package:auth_firebase/src/features/auth/interactor/atoms/auth_atom.dart';
import 'package:auth_firebase/src/features/auth/interactor/dtos/email_credential_dto.dart';
import 'package:auth_firebase/src/features/auth/interactor/states/auth_state.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var dto = EmailCredentialDTO();

  @override
  Widget build(BuildContext context) {
    final state = context.select(() => authState.value);
    final isLoading = state is Loading;
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
            Text(
              'Auth',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 40),
            TextFormField(
                enabled: !isLoading,
                onChanged: (value) {
                  dto.email = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                )),
            const SizedBox(height: 10),
            TextFormField(
                obscureText: true,
                enabled: !isLoading,
                onChanged: (value) {
                  dto.password = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                )),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () {
                      loginWithEmailAction.value = dto;
                    },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
