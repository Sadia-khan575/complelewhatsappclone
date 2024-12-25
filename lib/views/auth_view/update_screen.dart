import 'package:flutter/material.dart';
import 'package:wcapp/controllers/constants/app-colors.dart';
import 'package:wcapp/models/status_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<StatusModel> statusList = [
    StatusModel(
      name: "Sadia khan",
      statusImage: "assets/images/img1.jfif",
      lastUpdate: "Today, 12:00 PM",
      textColor: Colors.black, // Black text color
    ),
    StatusModel(
      name: "ayesha",
      statusImage: "assets/images/img2.jfif",
      lastUpdate: "Yesterday, 3:45 PM",
      textColor: Colors.black, // Black text color
    ),
    StatusModel(
      name: "javeriya",
      statusImage: "assets/images/img8.jfif",
      lastUpdate: "2 days ago, 9:15 AM",
      textColor: Colors.black, // Black text color
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status", style: TextStyle(color: AppColors.textColor)),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(statusList[index].statusImage),
            ),
            title: Text(
              statusList[index].name,
              style: TextStyle(color: statusList[index].textColor), // Black text color
            ),
            subtitle: Text(
              " ${statusList[index].lastUpdate}",
              style: TextStyle(color: statusList[index].textColor), // Black text color
            ),
            onTap: () {
              // Open status details
            },
          );
        },
      ),
    );
  }
}
