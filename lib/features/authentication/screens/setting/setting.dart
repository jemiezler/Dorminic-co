import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SetScreen extends StatefulWidget {
  const SetScreen({Key? key}) : super(key: key);

  @override
  _SetScreenState createState() => _SetScreenState();
}

class _SetScreenState extends State
{
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;

  void onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  void onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  void onChangeFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 5),
            Divider(height: 0),
            SizedBox(height: 10),
            buildSettingOption("Notification", valNotify1, onChangeFunction1),
            buildSettingOption("Account Active", valNotify2, onChangeFunction2),
            buildSettingOption("Phone", valNotify3, onChangeFunction3),
            buildSettingOption("E-mail", valNotify3, onChangeFunction3),
          ],
        ),
      ),
    );
  }

  Padding buildSettingOption(
    String title,
    bool value,
    Function(bool) onChangeMethod,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 17, color: Colors.black)),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              activeColor: Colors.green,
              trackColor: Colors.grey,
              value: value,
              onChanged: (newValue) {
                onChangeMethod(newValue);
              },
            ),
          ),
        ],
      ),
    );
  }
}
