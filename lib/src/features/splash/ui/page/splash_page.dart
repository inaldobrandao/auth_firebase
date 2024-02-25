import 'package:auth_firebase/src/features/auth/interactor/atoms/auth_atom.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .whenComplete(checkAuthAction.call);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          'Auth',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
