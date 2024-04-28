import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: ListView(
        children: <Widget>[
          NotificationTile(
            title: 'You have new massage',
            subtitle: '4 days ago',
            onTap: () {
              _showNotificationDetails(context, 'You have new massage');
            },
          ),
          // Add more NotificationTile widgets here...
          NotificationTile(
            title: 'You have new massage',
            subtitle: '10 days ago',
            onTap: () {
              _showNotificationDetails(context, 'You have new massage');
            },
          ),
          NotificationTile(
            title: 'You have new massage',
            subtitle: '14 days ago',
            onTap: () {
              _showNotificationDetails(context, 'You have new massage');
            },
          ),
        ],
      ),
    );
  }

  void _showNotificationDetails(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Notification Details'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const NotificationTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return ListTile(
      leading: Icon(Icons.receipt, size: 28),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Iconsax.notification),
      onTap: onTap,
    );
  }
}
