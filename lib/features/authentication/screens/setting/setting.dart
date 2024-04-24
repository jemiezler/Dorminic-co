import 'dart:ffi';

import 'package:dorminic_co/common/widgets/appbar.dart';
import 'package:dorminic_co/common/widgets/section_heading.dart';
import 'package:dorminic_co/features/authentication/screens/profile/widgets/profile_menu.dart';
import 'package:dorminic_co/features/authentication/screens/setting/setting_menu.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class SetScreen extends StatelessWidget {
  const SetScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    bool valNotify1 = true;
    bool valNotify2 = false;
    bool valNotify3 = false;

    onChangeFunction1(bool newValue1) {
      setState((){
        valNotify1 = newValue1;
      });
    }
     onChangeFunction2(bool newValue2) {
      setState((){
        valNotify2 = newValue2;
      });
    }
     onChangeFunction3(bool newValue3) {
      setState((){
        valNotify3 = newValue3;
      });
    }
    return Scaffold(
      appBar: CustomAppBar(showBackArrow: true, title: Text('Setting')),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 5),
             
              Divider(height: 0),
              SizedBox(height: 10),
  
              buildSettingOption("Notification", valNotify1,onChangeFunction1),
              buildSettingOption("Account Active", valNotify2,onChangeFunction2),
              buildSettingOption("Phone", valNotify3,onChangeFunction3),
              buildSettingOption("E-mail", valNotify3,onChangeFunction3),
            ],
          )),
    );
  }

  Padding buildSettingOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 17, color: AppColors.black)),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              activeColor: Colors.green,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Option1"),
                    Text("Option2"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close"))
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600])),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}