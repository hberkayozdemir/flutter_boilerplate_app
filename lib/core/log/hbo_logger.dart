abstract class HboLogger {
  void v(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void d(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void i(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void w(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void e(dynamic message, [dynamic error, StackTrace? stackTrace]);
}