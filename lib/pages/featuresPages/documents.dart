import 'package:flutter/material.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';

class documentPage extends StatelessWidget {
  const documentPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50))),
            child: Column(children: [
              const SizedBox(
                height: 35,
              ),
              ListTile(
                leading: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, 'mainPage');
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left_outlined,
                    )),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: AppLarge(text: 'Documents'),
                subtitle: AppText(text: 'one stop solution'),
                trailing: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/IMG1.JPG'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ]),
          ),
          Container(
            // margin: EdgeInsets.only(top: 10),

            color: Colors.orange,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(65))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard(
                      'PAN Card', Icons.paypal_rounded, Colors.pinkAccent, () {
                    Navigator.pushNamed(context, 'doc_det');
                  }),
                  itemDashboard(
                      'Aadhar Card', Icons.paypal_rounded, Colors.pinkAccent,
                      () {
                    Navigator.pushNamed(context, 'doc_det');
                  }),
                  itemDashboard(
                      'Voter ID Card', Icons.paypal_rounded, Colors.pinkAccent,
                      () {
                    Navigator.pushNamed(context, 'doc_det');
                  }),
                  itemDashboard(
                      'Credit Card', Icons.paypal_rounded, Colors.pinkAccent,
                      () {
                    Navigator.pushNamed(context, 'doc_det');
                  }),
                  itemDashboard(
                      'Passbook Card', Icons.paypal_rounded, Colors.pinkAccent,
                      () {
                    Navigator.pushNamed(context, 'doc_det');
                  }),
                  itemDashboard(
                      'PAN Card', Icons.paypal_rounded, Colors.pinkAccent, () {
                    Navigator.pushNamed(context, 'doc_det');
                  }),
                  itemDashboard(
                      'PAN Card', Icons.paypal_rounded, Colors.pinkAccent, () {
                    Navigator.pushNamed(context, 'doc_det');
                  }),
                  itemDashboard(
                      'PAN Card', Icons.paypal_rounded, Colors.pinkAccent, () {
                    Navigator.pushNamed(context, 'doc_det');
                  }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

itemDashboard(String title, IconData _icon, Color bg, VoidCallback onPress) =>
    InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Colors.orange.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: bg, shape: BoxShape.circle),
              child: Icon(_icon, color: Colors.white),
            ),
            const SizedBox(height: 8),
            AppText(
              text: title,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
