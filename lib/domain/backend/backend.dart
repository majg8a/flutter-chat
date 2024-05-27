import 'package:example_1/config/current_enviroment.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

dynamic post(params) async {
  try {
    WebSocketChannel channel =
        WebSocketChannel.connect(Uri.parse(env.BACKEND_URL ?? ""));
    channel.sink.add(params);
    List<dynamic> res = await channel.stream.toList();
    channel.sink.close();
    return res.last;
  } catch (e) {
    print(e);
  }
}
