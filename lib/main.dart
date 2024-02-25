import 'package:asp/asp.dart';
import 'package:auth_firebase/src/app_module.dart';
import 'package:auth_firebase/src/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(RxRoot(
    child: ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  ));
}
