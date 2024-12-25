import 'package:flutter/material.dart';
import 'package:wcapp/controllers/constants/app-colors.dart';

class IndividualChatScreen extends StatefulWidget {
  final String chatName;

  IndividualChatScreen({required this.chatName});

  @override
  _IndividualChatScreenState createState() => _IndividualChatScreenState();
}

class _IndividualChatScreenState extends State<IndividualChatScreen> {
  final TextEditingController _controller = TextEditingController();
  List<String> messages = ["Hello", "How are you?", "I'm good, thanks!"];

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add(_controller.text);
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.chatName}",
          style: TextStyle(color: Colors.black), // Black text color for title
        ),
        backgroundColor: AppColors.primaryColor,
        iconTheme: IconThemeData(color: Colors.black), // Black icon color
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              // Call button action
            },
          ),
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {
              // Video call button action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: index % 2 == 0 ? Colors.grey[300] : Colors.green[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        messages[index],
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black, // Black text color for messages
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.attach_file, color: Colors.black), // Black icon color
                  onPressed: () {
                    // Attach file action
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      hintStyle: TextStyle(color: Colors.black54), // Hint text color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    ),
                    style: TextStyle(color: Colors.black), // Text color in the input field
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.black), // Black icon color
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
