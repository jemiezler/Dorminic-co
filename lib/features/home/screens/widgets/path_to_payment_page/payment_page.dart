// TODO Implement this library.// TODO Implement this library.import 'package:flutter/material.dart';

import 'package:dorminic_co/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Payment', style: AppTextTheme.lightTextTheme.headlineMedium),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter QR code',
              style: AppTextTheme.lightTextTheme.headline5,
            ),
            SizedBox(height: 16.0),

            ///QrImage(
            //// data: 'your_qr_code_data',
            /// size: 200.0,
            ////  ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Confirm Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
