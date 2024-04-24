import 'package:dorminic_co/app.dart';
import 'package:dorminic_co/common/widgets/appbar.dart';
import 'package:dorminic_co/common/widgets/custom_shapes/CircularImage.dart';
import 'package:dorminic_co/common/widgets/section_heading.dart';
import 'package:dorminic_co/features/authentication/screens/profile/widgets/profile_menu.dart';
import 'package:dorminic_co/utils/constants/image_strings.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(showBackArrow: true, title: Text('Profile')),
 
      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width:  double.infinity,
                child: Column(
                  children: [
                    Image.asset('assets/icons/App-icon.png',
                        width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Heading Profile Info
              const SectionHeading(title: "Profile Information",showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ProfileMenu(title: 'Name', value: 'John Wick',onPressed: (){
                
              },),
              ProfileMenu(title: 'Username', value: 'JohnWick5697',onPressed: (){}),

              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ///Heading Personal Info
              
              const SectionHeading(title: 'Personal Information',showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ProfileMenu(title: 'User ID', value: '12345',icon: Iconsax.copy,onPressed: (){}),
              ProfileMenu(title: 'E-mail', value: 'User56412166541@gmail.com',onPressed: (){}),
              ProfileMenu(title: 'Phone Number', value: 'John Wick',onPressed: (){}),
              ProfileMenu(title: 'Gender', value: 'Male',onPressed: (){}),
              ProfileMenu(title: 'Date of Birth', value: '10 Oct. 1996',onPressed: (){}),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              Center(
                child: TextButton(onPressed: (){},child: const Text('Close Account',style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
