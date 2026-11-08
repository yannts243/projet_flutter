# GLIO Skills

Flutter application scaffold using feature-first Clean Architecture.

## Structure

- `app/`: root widget, routes, theme, and dependency registration.
- `core/`: shared constants, error/result types, network contracts, and use cases.
- `features/authentication/`: the initial feature, split into:
  - `presentation/`: login/register placeholders and BLoC contracts.
  - `domain/`: user entity, repository contract, and use cases.
  - `data/`: user model, data-source contracts, and repository adapter.

The authentication screens and BLoC are scaffolding only. No data-source
implementation, credentials handling, or backend integration is configured.
Implement those pieces and register their dependencies in
`app/di/injection.dart` when the service requirements are known.

## Dependencies

- `flutter_bloc` and `equatable`: state management and value equality.
- `get_it`: dependency injection.
- `go_router`: app navigation.
- A small sealed `Result` type in `core/errors/result.dart` represents
  successful values and domain failures without an additional package.

Run `flutter pub get`, `flutter analyze`, and `flutter test` from this directory.
