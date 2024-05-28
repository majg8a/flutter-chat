import 'package:example_1/config/enviroment.dart';

final class EnviromentDev extends Enviroment {
  @override
  String get BACKEND_URL => "ws://localhost:5000";
}
