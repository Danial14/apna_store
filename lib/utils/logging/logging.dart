import 'package:logger/logger.dart';

class AppLogging{
  static final Logger _appLogger = Logger(
    printer: PrettyPrinter(
    ),
    level: Level.debug
  );
  static void debug(String message){
    _appLogger.d(message);
  }
  static void info(String message){
    _appLogger.i(message);
  }
  static void warning(String message){
    _appLogger.w(message);
  }
  static void error(String message, [dynamic error]){
    _appLogger.e(message, error: error, stackTrace: StackTrace.current);
  }
}