final class ServerException implements Exception {
  const ServerException([this.message = 'A server error occurred.']);

  final String message;
}

final class CacheException implements Exception {
  const CacheException([this.message = 'A local storage error occurred.']);

  final String message;
}
