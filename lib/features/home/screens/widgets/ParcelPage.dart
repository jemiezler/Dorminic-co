import 'package:flutter/material.dart';

class ParcelPage extends StatelessWidget {
  const ParcelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แจ้งเตือนรับพัสดุ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildParcelItem(
              'ชื่อผู้ส่ง: John Doe',
              'รายละเอียด: มีการส่งจากบริษัท ABC',
              '2024-04-25', // วันที่
              '12:30 PM', // เวลา
              'assets/images/Box.jpg', // ที่อยู่ของรูปภาพ
            ),
            _buildParcelItem(
              'ชื่อผู้ส่ง: Jane Smith',
              'รายละเอียด: มีการส่งจากบริษัท XYZ',
              '2024-04-26', // วันที่
              '10:00 AM', // เวลา
              'assets/images/Box2.jpg', // ที่อยู่ของรูปภาพ
            ),
            // เพิ่มรายการพัสดุเพิ่มเติมตามต้องการ
          ],
        ),
      ),
    );
  }

  Widget _buildParcelItem(String sender, String details, String date,
      String time, String imagePath) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              sender,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              details,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'วันที่: $date',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'เวลา: $time',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Image.asset(
              imagePath,
              height: 100, // กำหนดความสูงของภาพ
              width: 100, // กำหนดความกว้างของภาพ
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Show more details dialog here
              },
              child: Text(
                'More Details',
                style: TextStyle(
                  fontSize: 16.0,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
