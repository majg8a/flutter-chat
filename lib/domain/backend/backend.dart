import 'dart:convert';

import 'package:example_1/config/current_enviroment.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final _channel = WebSocketChannel.connect(Uri.parse(env.BACKEND_URL ?? ""));
Stream? post(params) {
  try {
    try {
      params = json.encode(params);
    } catch (error) {}
    _channel.sink.add(params);
    return _channel.stream;
  } catch (e) {
    print(e);
  }
  return null;
}

void disconnect() {
  _channel.sink.close();
}
