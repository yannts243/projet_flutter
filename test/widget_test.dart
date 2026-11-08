import 'package:flutter_test/flutter_test.dart';
import 'package:glio_skills/app/app.dart';

void main() {
  testWidgets('starts on the login route and navigates to registration',
      (WidgetTester tester) async {
    await tester.pumpWidget(const GlioSkillsApp());
    await tester.pumpAndSettle();

    expect(find.text('Connexion'), findsOneWidget);

    await tester.tap(find.text('Créer un compte'));
    await tester.pumpAndSettle();

    expect(find.text('L’inscription sera ajoutée ultérieurement.'),
        findsOneWidget);
  });
}
