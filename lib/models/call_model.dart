class CallModel {
  final String name;
  final String phoneNumber;
  final String callType; // Incoming or Outgoing
  final String time;
  final String duration;
  final String? image; // Add image field

  CallModel({
    required this.name,
    required this.phoneNumber,
    required this.callType,
    required this.time,
    required this.duration,
    this.image, // Optional
  });
}
