import 'package:flutter/material.dart';
import 'package:wcapp/controllers/constants/app-colors.dart';
import 'package:wcapp/models/coummunity_model.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<CommunityModel> communityList = [
    CommunityModel(
      name: "Family Group",
      icon: "assets/images/img11.jfif",
      lastMessage: "Happy Birthday!",
      textColor: Colors.black, // Black text color
    ),
    CommunityModel(
      name: "Work Team",
      icon: "assets/images/img12.jfif",
      lastMessage: "Meeting at 3 PM",
      textColor: Colors.black, // Black text color
    ),
    CommunityModel(
      name: "Friends Group",
      icon: "assets/images/img13.jfif",
      lastMessage: "Let's plan a trip!",
      textColor: Colors.black, // Black text color
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Communities", style: TextStyle(color: AppColors.textColor)),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView.builder(
        itemCount: communityList.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(communityList[index].icon),
            ),
            title: Text(
              communityList[index].name,
              style: TextStyle(color: communityList[index].textColor), // Custom or black text color
            ),
            subtitle: Text(
              " ${communityList[index].lastMessage}",
              style: TextStyle(color: communityList[index].textColor), // Custom or black text color
            ),
            onTap: () {
              // Open specific community/group
            },
          );
        },
      ),
    );
  }
}
