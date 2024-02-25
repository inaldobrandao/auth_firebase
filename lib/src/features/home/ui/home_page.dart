import 'package:auth_firebase/src/features/auth/interactor/atoms/auth_atom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height: 50),
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                Navigator.pop(context);
                logoutAction();
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
    );
  }
}
