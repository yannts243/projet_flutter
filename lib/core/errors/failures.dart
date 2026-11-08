import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  const Failure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

final class ServerFailure extends Failure {
  const ServerFailure([super.message = 'A server error occurred.']);
}

final class CacheFailure extends Failure {
  const CacheFailure([super.message = 'A local storage error occurred.']);
}
