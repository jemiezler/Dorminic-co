import 'dart:async';

import 'package:dorminic_co/features/home/Api/api.dart';
import 'package:flutter/material.dart';

class BillsPage extends StatefulWidget {
  const BillsPage({Key? key}) : super(key: key);

  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  late Future<List<dynamic>> _billsFuture;

  @override
  void initState() {
    super.initState();
    _billsFuture = BillsApi.fetchBills();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bills Summary'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _billsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            return _buildBillsList(snapshot.data!);
          }
        },
      ),
    );
  }

  Widget _buildBillsList(List<dynamic> bills) {
    return ListView.builder(
      itemCount: bills.length,
      itemBuilder: (context, index) {
        return _buildPaymentHistoryCard(
          date: '${bills[index]['month']}-${bills[index]['year']}',
          status: bills[index]['isPaid'] == 1 ? 'Paid' : 'Unpaid',
        );
      },
    );
  }

  Widget _buildPaymentHistoryCard(
      {required String date, required String status}) {
    Color statusColor = status == 'Paid' ? Colors.green : Colors.red;

    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        onTap: () {
          // Handle tap on payment history card to view details
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Date: $date',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Status: $status',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: statusColor,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  // Handle "more detail" button tap for payment history
                },
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
