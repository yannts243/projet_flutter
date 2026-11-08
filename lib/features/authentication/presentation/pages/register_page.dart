import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_constants.dart';
import '../widgets/auth_placeholder.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AuthPlaceholder(
          title: 'Créer un compte',
          description: 'L’inscription sera ajoutée ultérieurement.',
          actionLabel: 'Retour à la connexion',
          onAction: () => context.go(AppConstants.loginPath),
        ),
      ),
    );
  }
}
