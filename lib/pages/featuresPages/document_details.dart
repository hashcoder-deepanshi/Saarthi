import 'package:flutter/material.dart';
import 'package:saarthi/misc/colors.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';

class DocumentDetailsPage extends StatefulWidget {
  const DocumentDetailsPage({super.key});
  _DocumentDetailsPageState createState() => _DocumentDetailsPageState();
}

class _DocumentDetailsPageState extends State<DocumentDetailsPage> {
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
                title: AppLarge(text: 'PAN Card'),
                subtitle: AppText(text: 'updation form'),
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
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  )),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Aadhar Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'DD/MM/YYYY',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Age',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Container(
                              padding: EdgeInsets.all(14),
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(10)),
                              child: AppText(
                                text: 'Your Application Submitted Successfully',
                                color: Colors.white,
                                size: 14,
                              ),
                            ),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ));
                          Navigator.pushNamed(context, 'application');
                        },
                        child: AppText(
                            text: 'Submit Application',
                            color: Colors.white,
                            size: 17),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.orange),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
