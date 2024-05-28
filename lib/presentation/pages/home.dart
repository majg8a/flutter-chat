import 'package:example_1/config/display_size.dart';
import 'package:example_1/domain/authentication/authentication.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _textController = TextEditingController();

  Authentication auth = Authentication();

  @override
  void initState() {
    super.initState();
    auth.authenticate();
  }

  //ws
  void sendMessage(String text) {
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(getVW(.02)),
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: getVW(.02),
          children: [
            SingleChildScrollView(
              
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter yout message',
                hintStyle: TextStyle(
                  fontSize: getVW(.03),
                ),
              ),
              style: TextStyle(
                fontSize: getVW(.03),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(getVW(1), getVW(.08)),
              ),
              onPressed: () {
                if (_textController.text.isEmpty) {
                  return;
                }
                sendMessage(_textController.text);
              },
              child: Text(
                'send message',
                style: TextStyle(fontSize: getVW(.03)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
