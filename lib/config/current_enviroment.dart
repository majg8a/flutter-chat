import 'package:example_1/config/enviroment.dart';
import 'package:example_1/config/enviroment.prod.dart';

const bool _isProduction = bool.fromEnvironment('dart.vm.product');
final Enviroment env = _isProduction ? EnviromentProd() : EnviromentProd();
