import 'package:dorminic_co/common/widgets/appbar.dart';
import 'package:dorminic_co/common/widgets/section_heading.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Notification',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Iconsax.receipt,size: 28,),
            title: Text('You have new massage',),
            subtitle: Text('4 days ago'),
            trailing: Icon(Iconsax.arrow_right_34,size:28),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Iconsax.receipt,size: 28,),
            title: Text('You have new massage',),
            subtitle: Text('8 days ago'),
            trailing: Icon(Iconsax.arrow_right_34,size:28),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Iconsax.receipt,size: 28,),
            title: Text('You have new massage',),
            subtitle: Text('1 mounth ago'),
            trailing: Icon(Iconsax.arrow_right_34,size:28),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Iconsax.receipt,size: 28,),
            title: Text('You have new massage',),
            subtitle: Text('2 mounths ago'),
            trailing: Icon(Iconsax.arrow_right_34,size:28),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Iconsax.receipt,size: 28,),
            title: Text('You have new massage',),
            subtitle: Text('2 mounths ago'),
            trailing: Icon(Iconsax.arrow_right_34,size:28),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Iconsax.receipt,size: 28,),
            title: Text('You have new massage',),
            subtitle: Text('3 mounths ago'),
            trailing: Icon(Iconsax.arrow_right_34,size:28),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Iconsax.receipt,size: 28,),
            title: Text('You have new massage',),
            subtitle: Text('3 mounths ago'),
            trailing: Icon(Iconsax.arrow_right_34,size:28),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Iconsax.receipt,size: 28,),
            title: Text('You have new massage',),
            subtitle: Text('4 mounths ago'),
            trailing: Icon(Iconsax.arrow_right_34,size:28),
            
          ),
          Divider(height: 0,),
        ],
      ),
    );
  }
}
