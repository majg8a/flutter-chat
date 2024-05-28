import 'package:example_1/domain/backend/backend.dart';

void sendMessage(message) {
  Map req = {'message': message, 'action': 'ADD_MESSAGE'};
  post(req);
}
