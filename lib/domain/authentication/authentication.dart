import 'package:example_1/domain/backend/backend.dart';

class Authentication {
  static String? userID;
  void authenticate() async {
    Map req = {'action': 'ADD_USER'};
    post(req)?.listen((event) {
      userID = event;
    });
  }
}
