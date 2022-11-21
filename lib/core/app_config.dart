import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  AppConfig();

  String get apiUrl =>
      'http://ec2-54-226-60-142.compute-1.amazonaws.com:8080/api/v1/';
}
