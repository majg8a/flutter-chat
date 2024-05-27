import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _textController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  //ws
  void sendMessage(String text) {
    print(text);
  
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              hintText: 'Enter yout message',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (_textController.text.isEmpty) {
                  return;
                }

                sendMessage(_textController.text);
              },
              child: const Text('send message')),
        ],
      ),
    );
  }
}
