import 'package:dorminic_co/features/home/screens/widgets/path_to_payment_page/payment_page.dart';
import 'package:dorminic_co/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

// Rest of your code...

class Bill {
  final double totalAmount;
  final DateTime dueDate;
  bool isPaid;

  Bill({
    required this.totalAmount,
    required this.dueDate,
    this.isPaid = false,
  });
}

class BillsPage extends StatefulWidget {
  const BillsPage({Key? key}) : super(key: key);

  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  List<Bill> _bills = [
    Bill(totalAmount: 950.0, dueDate: DateTime(2024, 6, 30), isPaid: false),
    Bill(totalAmount: 1050.0, dueDate: DateTime(2024, 5, 1), isPaid: false),
    Bill(totalAmount: 1050.0, dueDate: DateTime(2024, 4, 1), isPaid: false),
    Bill(totalAmount: 1500.0, dueDate: DateTime(2024, 5, 1), isPaid: true),
  ].where((bill) => !bill.isPaid).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bills & Payments',
          style: AppTextTheme.lightTextTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Total monthly amount to pay',
                      style: AppTextTheme.lightTextTheme.subtitle1,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '${_bills.fold(0.0, (previousValue, bill) => previousValue + bill.totalAmount).toStringAsFixed(2)} Bath',
                      style: AppTextTheme.lightTextTheme.headline4,
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PaymentPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Pay Now',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Payment history',
              style: AppTextTheme.lightTextTheme.headline5,
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: _bills.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10.0), //Add bottom padding here
                    child: Card(
                      elevation: 4.0,
                      child: ExpansionTile(
                        title: Text(
                            'Total Amount: ${_bills[index].totalAmount.toString()} Bath',
                            style: AppTextTheme.lightTextTheme.subtitle1),
                        subtitle: Text(
                            'Due Date: ${_bills[index].dueDate.month}/${_bills[index].dueDate.year} - Status: ${_bills[index].isPaid ? 'Paid' : 'Unpaid'}',
                            style: AppTextTheme.lightTextTheme.caption),
                        children: [
                          ListTile(
                            title: Text('Electricity Bill: 500 Bath',
                                style: AppTextTheme.lightTextTheme.subtitle1),
                          ),
                          ListTile(
                            title: Text('Water Bill: 300 Bath',
                                style: AppTextTheme.lightTextTheme.subtitle1),
                          ),
                          ListTile(
                            title: Text('Rent: 150 Bath',
                                style: AppTextTheme.lightTextTheme.subtitle1),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
