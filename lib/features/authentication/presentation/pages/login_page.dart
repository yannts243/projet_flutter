import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_constants.dart';
import '../widgets/auth_placeholder.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AuthPlaceholder(
          title: 'Connexion',
          description: 'L’écran de connexion sera ajouté ultérieurement.',
          actionLabel: 'Créer un compte',
          onAction: () => context.go(AppConstants.registerPath),
        ),
      ),
    );
  }
}
