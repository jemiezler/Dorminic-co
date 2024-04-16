import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/icons/App-icon.png',width: 50,height: 50),
      title: Text('John Wick',style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text('User65564654@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit,color:  AppColors.white)),
    );
  }
}