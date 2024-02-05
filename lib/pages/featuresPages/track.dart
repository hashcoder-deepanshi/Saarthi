import 'dart:html';

import 'package:flutter/material.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});
  _TrackPageState createState() => _TrackPageState();
}

List<String> list = [
  'Chandigarh',
  'Chennai',
  'Delhi',
  'Jammu',
  'Kashmir',
  'Kerela',
  'Rajasthan',
  'Tamil Nadu'
];
String dropdownValue = list.first;

class _TrackPageState extends State<TrackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, top: 50),
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: AppLarge(
              text: 'Track Your \nPension',
              color: Colors.white,
            ),
          ),
          Container(
            color: Colors.orange,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  DropdownMenu<String>(
                    width: 290,
                    // inputDecorationTheme: InputDecorationTheme(
                    //     outlineInputBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(4))),
                    initialSelection: list.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Office Id',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'PPO No.',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 260,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'track_otp');
                        },
                        child: AppText(
                            text: 'Get Status', color: Colors.white, size: 17),
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
