import 'package:dorminic_co/features/home/screens/widgets/BillsPage.dart';
import 'package:dorminic_co/features/home/screens/widgets/NewsPage.dart';
import 'package:dorminic_co/features/home/screens/widgets/ParcelPage.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late PageController _pageController;
  int activePageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(
            color: Theme.of(context).appBarTheme.titleTextStyle!.color,
            fontSize: 30,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: _menuBar(context),
              ),
              Expanded(
                flex: 2,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int i) {
                    FocusScope.of(context).requestFocus(FocusNode());
                    setState(() {
                      activePageIndex = i;
                    });
                  },
                  children: <Widget>[
                    NewsPage(),
                    BillsPage(),
                    ParcelPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color(0XFFE0E0E0),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildTab(context, "News", 0),
          _buildTab(context, "Bills", 1),
          _buildTab(context, "Parcel", 2),
        ],
      ),
    );
  }

  Widget _buildTab(BuildContext context, String label, int index) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        onTap: () => _onTabPressed(index),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: activePageIndex == index ? Colors.black : null,
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: activePageIndex == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  void _onTabPressed(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.decelerate,
    );
  }
}
