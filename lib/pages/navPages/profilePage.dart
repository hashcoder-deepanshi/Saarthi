// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:saarthi/misc/colors.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(image: AssetImage('assets/IMG1.JPG')),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppLarge(
                text: 'Deepanshi Chourasia',
                size: 22,
              ),
              AppText(
                text: 'Deepanshi@gmail.com',
                size: 14,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: AppText(
                      text: 'Edit Profile', color: Colors.white, size: 17),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.mainButtoncolor,
                    side: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              //MENU
              ProfilePageIcons(
                icon: Icons.newspaper_rounded,
                text: 'Aadhar Card',
                onPress: () {},
              ),
              ProfilePageIcons(
                icon: Icons.settings,
                text: 'Settings',
                onPress: () {},
              ),
              ProfilePageIcons(
                icon: Icons.account_circle,
                text: 'About Us',
                onPress: () {},
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              ProfilePageIcons(
                icon: Icons.chat_bubble,
                text: 'FAQs',
                onPress: () {},
              ),
              ProfilePageIcons(
                icon: Icons.logout,
                text: 'Logout',
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePageIcons extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;

  const ProfilePageIcons({
    super.key,
    required this.text,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      minVerticalPadding: 20,
      leading: Container(
        width: 50,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColor.mainButtoncolor.withOpacity(0.5)),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: AppText(
        text: text,
        color: Colors.black,
      ),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.5)),
              child: Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colors.grey,
              ),
            )
          : null,
    );
  }
}
