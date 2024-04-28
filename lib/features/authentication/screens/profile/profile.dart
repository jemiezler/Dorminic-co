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
                _showNameInputDialog(context);
              },),
              ProfileMenu(title: 'Username', value: 'JohnWick5697',onPressed: (){
                _showNameInputDialog(context);
              }),

              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ///Heading Personal Info
              
              const SectionHeading(title: 'Personal Information',showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              
              ProfileMenu(title: 'E-mail', value: 'User56412166541@gmail.com',onPressed: (){
                _showNameInputDialog(context);
              }),
              ProfileMenu(title: 'Phone Number', value: 'John Wick',onPressed: (){
                _showNameInputDialog(context);
              }),
              ProfileMenu(title: 'Gender', value: 'Male',onPressed: (){
                _showNameInputDialog(context);
              }),
              ProfileMenu(title: 'Date of Birth', value: '10 Oct. 1996',onPressed: (){
                _showNameInputDialog(context);
              }),
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
void _showNameInputDialog(BuildContext context) {
    TextEditingController _nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Change'),
          content: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Enter your new text',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Add logic to save the new name
                String newName = _nameController.text;
                // Perform any action with the new name here
                // For example, you can print it
                print('New name: $newName');
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

class ProfileMenu extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onPressed;

  const ProfileMenu({
    Key? key,
    required this.title,
    required this.value,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}