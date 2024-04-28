import 'package:dorminic_co/common/widgets/News_page.dart';
import 'package:dorminic_co/common/widgets/Tabbar.dart';
import 'package:dorminic_co/common/widgets/breaking_news.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key); // Correct constructor syntax

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Menu',
              style: TextStyle(fontSize: 24),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue.shade100,
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Tabitem(titile: 'News', count: 6),
                      Tabitem(titile: 'Bills', count: 3),
                      Tabitem(titile: 'Parcel', count: 1),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: NewsPage()), // Non-const constructor call
              Center(child: BillsPage()),
              Center(child: Text('news')),
            ],
          ),
        ),
      ),
    );
  }
}
