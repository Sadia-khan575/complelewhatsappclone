import 'package:flutter/material.dart';
import 'package:wcapp/controllers/constants/app-colors.dart';
import 'individual_chat_screen.dart'; // Import your individual chat screen
import 'update_screen.dart';
import 'community_screen.dart';
import 'call_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  // List of screens for BottomNavigationBar
  List<Widget> _screens = [
    ChatsScreen(), // Chats Screen
    StatusScreen(), // Update Screen
    CommunityScreen(), // Community Screen
    CallScreen(), // Call Screen
  ];

  // Function to handle Bottom Navigation
  void _onItemTapped(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(color: AppColors.textColor)),
        backgroundColor: AppColors.primaryColor,
      ),
      body: _screens[selected], // Display selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: selected == 0 ? Colors.green : Colors.grey),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update, color: selected == 1 ? Colors.green : Colors.grey),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: selected == 2 ? Colors.green : Colors.grey),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, color: selected == 3 ? Colors.green : Colors.grey),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  List SenderName = [
    'Sadia khan',
    'ayesha',
    'noor',
    'rabia',
    'nadia',
    'azka',
    'momna',
    'javeriya',
    'quratulain',
    'aliya',
  ];
  List SubTitle = [
    'hello',
    'how are you',
    'Photo',
    'hii',
    'whats doing',
    'asalam',
    'Photo',
    'bye',
    'lactures',
    'hello',
  ];
  List Timeing = [
    '12:00AM',
    '3:00PM',
    '9:20AM',
    '11:00AM',
    '7:45PM',
    '1:23AM',
    '6:15PM',
    '2:10PM',
    '1:35AM',
    '4:56',
  ];
  List Profiles = [
    'assets/images/img1.jfif',
    'assets/images/img2.jfif',
    'assets/images/img3.jfif',
    'assets/images/image4.jfif',
    'assets/images/img5.jfif',
    'assets/images/img6.jfif',
    'assets/images/img7.jfif',
    'assets/images/img8.jfif',
    'assets/images/img9.jfif',
    'assets/images/image10.jfif',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: SenderName.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(Profiles[index]),
          ),
          title: Text(SenderName[index], style: TextStyle(color: AppColors.textColor)), // Black text color
          subtitle: Text(SubTitle[index], style: TextStyle(color: AppColors.textColor)), // Black text color
          trailing: Text(Timeing[index], style: TextStyle(color: AppColors.textColor)), // Black text color
          onTap: () {
            // Navigate to IndividualChatScreen when a chat is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndividualChatScreen(chatName: SenderName[index]),
              ),
            );
          },
        );
      },
    );
  }
}
