import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'theme/app_theme.dart';

class GlioSkillsApp extends StatelessWidget {
  const GlioSkillsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GLIO Skills',
      theme: AppTheme.light,
      routerConfig: AppRouter.router,
    );
  }
}
