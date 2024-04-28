import 'package:dorminic_co/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Announcement',
            style: AppTextTheme.lightTextTheme.headlineSmall),
      ),
      body: ListView(
        children: [
          // American Airlines News
          NewsItem(
            title: 'The water doesnt flow',
            subtitle: 'Broken pipe',
            author: 'Marnie Hunter',
            date: 'Recent News',
            onTap: () {
              // Navigate to detailed news page
              // Implement your navigation logic here
            },
            backgroundColor:
                Colors.blue.shade100, // Background color for the card
            icon: Icons.account_circle, // Icon for the account
          ),

          // Teens have abandoned Facebook
          NewsItem(
            title: 'Maintenance of electrical equipment',
            subtitle:
                'Turn off electricity, work to fix risk points, and replace worn-out equipment.',
            author: 'Chaisit Phatthawichayanon',
            date: '29/05/2567 00:00',
            onTap: () {
              // Navigate to detailed news page
              // Implement your navigation logic here
            },
            backgroundColor:
                Colors.green.shade100, // Background color for the card
            icon: Icons.account_circle, // Icon for the account
          ),

          // Tubi expands its free streaming service
          NewsItem(
            title: 'Announcement looking for a helmet',
            subtitle:
                'If anyone sees it, contact the administration department.',
            author: 'Chaisit Phatthawichayanon',
            date: '20/04/2567 09:40',
            onTap: () {
              // Navigate to detailed news page
              // Implement your navigation logic here
            },
            backgroundColor:
                Colors.orange.shade100, // Background color for the card
            icon: Icons.account_circle, // Icon for the account
          ),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String author;
  final String date;
  final VoidCallback onTap;
  final Color backgroundColor; // Background color for the card
  final IconData icon; // Icon for the account

  NewsItem({
    required this.title,
    required this.subtitle,
    required this.author,
    required this.date,
    required this.onTap,
    required this.backgroundColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon), // Display icon for the account
                  SizedBox(width: 8),
                  Text(
                    'Author: $author',
                    style: AppTextTheme.lightTextTheme.labelLarge,
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: AppTextTheme.lightTextTheme.headlineSmall,
              ),
              SizedBox(height: 8),
              Text(
                subtitle,
                style: AppTextTheme.lightTextTheme.bodyMedium,
              ),
              SizedBox(height: 8),
              Text(
                'Date: $date',
                style: AppTextTheme.lightTextTheme.labelLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
