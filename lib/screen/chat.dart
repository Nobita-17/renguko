import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'chatbubble.dart';
import 'dotindicator.dart';
import 'home.dart';
class ChatScreen extends StatefulWidget {
  @override

  _ChatScreenState createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {
  FlutterTts flutterTts = FlutterTts();

  List<String> messages = [];
  final TextEditingController textController = TextEditingController();
  bool isSpeaking = false;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts()
      ..setCompletionHandler(() {
        // Callback when TTS is complete
        setState(() {
          isSpeaking = false;
        });
      });
  }

  Future<void> _speakText() async {
    String textToSpeak = textController.text.trim();

    String newMessage = textController.text.trim();
    if (newMessage.isNotEmpty) {
      messages.insert(0, newMessage);
      textController.clear();
      setState(() {});
    }
    await flutterTts.speak(textToSpeak);
    if (textToSpeak.isNotEmpty) {
      isSpeaking = true;
    } else {
      print('Text is empty. Enter some text to speak.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          actions: [
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  HomeScreen()),
              );
            }, icon: Icon(Icons.arrow_back)),
          ],
          title: Text('Lets Chat with Hashira',style: TextStyle(fontSize: 22),),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(message: messages[index]);
                },
              ),
            ),
            if (isSpeaking)
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/speak.jpeg'), // Corrected path
                  ),
                  SizedBox(height: 10),
                  Text('Speaking...'),
                ],
              ),
           if(isSpeaking==false)
             Text('Type Your Message'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: textController,
                      onChanged: (message) {},
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      _speakText();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}