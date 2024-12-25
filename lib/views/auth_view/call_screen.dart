import 'package:flutter/material.dart';
import 'package:wcapp/controllers/constants/app-colors.dart';
import 'package:wcapp/models/call_model.dart';


class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List<CallModel> callList = [
    CallModel(
      name: "momna",
      phoneNumber: "+1234567890",
      callType: "Incoming",
      time: "Yesterday",
      duration: "2:15",
      image: 'assets/images/img7.jfif', // Add image path
    ),
    CallModel(
      name: "rabia",
      phoneNumber: "+92...........",
      callType: "Outgoing",
      time: "2 days ago",
      duration: "3:30",
      image: 'assets/images/image4.jfif',
    ),
    CallModel(
      name: "Ayesha",
      phoneNumber: "034511112..",
      callType: "Missed",
      time: "3 days ago",
      duration: "N/A",
      image: 'assets/images/img2.jfif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calls", style: TextStyle(color: AppColors.textColor)), // Black text color
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: callList[index].image != null
                  ? AssetImage(callList[index].image!) // Load image from assets
                  : null, // If no image, show default
              child: callList[index].image == null
                  ? Icon(
                callList[index].callType == "Incoming"
                    ? Icons.call_received
                    : callList[index].callType == "Outgoing"
                    ? Icons.call_made
                    : Icons.call_missed,
                color: Colors.white,
              )
                  : null, // If image exists, do not show an icon
              backgroundColor: callList[index].callType == "Incoming"
                  ? Colors.green
                  : callList[index].callType == "Outgoing"
                  ? Colors.blue
                  : Colors.red,
            ),
            title: Text(callList[index].name, style: TextStyle(color: AppColors.textColor)), // Black text color
            subtitle: Text(
              "${callList[index].callType} - ${callList[index].time}",
              style: TextStyle(color: AppColors.textColor), // Black text color
            ),
            trailing: Text(callList[index].duration, style: TextStyle(color: AppColors.textColor)), // Black text color
            onTap: () {
              // Open call details or initiate call
            },
          );
        },
      ),
    );
  }
}
