import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ข่าวสาร'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildNewsItem(
              'หัวข้อข่าวที่นี่',
              'เนื้อหาข่าวสารที่นี่...',
              'https://th.bing.com/th/id/R.b9ef9cd01a8f2eb9a52bb821877aee60?rik=4gJB4SlKzRV64w&riu=http%3a%2f%2fwww.emperorhouse.com%2fweb2%2fwp-content%2fuploads%2f2018%2f07%2f5.png&ehk=fkL5FdmPHwyGHp%2bc45cErKFW2D0VZlR5lsSoBftF5bI%3d&risl=&pid=ImgRaw&r=0',
            ),
            _buildNewsItem(
              'หัวข้อข่าวอื่น ๆ',
              'เนื้อหาข่าวสารที่นี่...',
              'https://thietkenhadepmoi.com/wp-content/uploads/2017/11/kien-truc-biet-thu-co-dien-phap-7442.jpg',
            ),
            // เพิ่มข่าวสารเพิ่มเติมตามต้องการ
          ],
        ),
      ),
    );
  }

  Widget _buildNewsItem(String title, String content, String imageUrl) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          imageUrl.isNotEmpty
              ? Image.network(
                  imageUrl,
                  height: 200.0,
                  fit: BoxFit.cover,
                )
              : SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  content,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
