// WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.width
import 'package:flutter/widgets.dart';

double getVW(double percent) {
  return WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.width * percent;
}

double getVH(double percent) {
  return WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.height * percent;
}