import 'package:dorminic_co/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class ParcelPage extends StatelessWidget {
  const ParcelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parcel Notifications',
            style: AppTextTheme.lightTextTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildParcelItem(
              'Sender: John Doe',
              'Details: Package sent from ABC Company',
              '2024-04-25',
              '12:30 PM',
              'assets/images/Box.jpg',
            ),
            _buildParcelItem(
              'Sender: Jane Smith',
              'Details: Package sent from XYZ Company',
              '2024-04-26',
              '10:00 AM',
              'assets/images/Box2.jpg',
            ),
            // Add more parcel items here
          ],
        ),
      ),
    );
  }
}

Widget _buildParcelItem(
    String sender, String details, String date, String time, String imagePath) {
  return Card(
    margin: EdgeInsets.all(16.0),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Sender: $sender',
            style: AppTextTheme.lightTextTheme.titleLarge,
          ),
          SizedBox(height: 8.0),
          Text(
            'Details: $details',
            style: AppTextTheme.lightTextTheme.bodyMedium,
          ),
          SizedBox(height: 8.0),
          Text(
            'Date: $date',
            style: AppTextTheme.lightTextTheme.bodyMedium,
          ),
          Text(
            'Time: $time',
            style: AppTextTheme.lightTextTheme.bodyMedium,
          ),
          SizedBox(height: 8.0),
          Image.asset(
            imagePath,
            height: 100,
            width: 100,
          ),
          SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              // Show more details dialog here
            },
            child: Text(
              'More Details',
              style: AppTextTheme.lightTextTheme.bodyText1,
            ),
          ),
        ],
      ),
    ),
  );
}
