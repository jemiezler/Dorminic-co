class Parcel {
  final String sender;
  final String details;
  final String status;
  final String date;
  final String time;
  final String imagePath;

  Parcel({
    required this.sender,
    required this.details,
    required this.status,
    required this.date,
    required this.time,
    required this.imagePath,
  });

  factory Parcel.fromJson(Map<String, dynamic> json) {
    return Parcel(
      sender: json['sender'],
      details: json['details'],
      status: json['status'],
      date: json['date'],
      time: json['time'],
      imagePath: json['image_path'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sender': sender,
      'details': details,
      'status': status,
      'date': date,
      'time': time,
      'image_path': imagePath,
    };
  }
}
