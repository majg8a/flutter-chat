import 'package:example_1/domain/backend/backend.dart';

void sendMessage(message) {
  post({'message': message, 'action': 'ADD_MESSAGE'});
}
