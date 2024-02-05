import 'package:flutter/material.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';
import 'package:saarthi/widget/responsive_button.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});
  _ApplicationPageState createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  final List<Map<String, dynamic>> list = List.generate(
      1,
      (index) => {
            "id": index,
            "title": "Item $index",
            "content": "Application submitted"
          });
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          final item = list[index];
          return Card(
            elevation: 4,
            child: ExpansionTile(
              childrenPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              expandedCrossAxisAlignment: CrossAxisAlignment.end,
              title: Text(
                item['title'],
                style: const TextStyle(color: Colors.black38),
              ),
              children: [
                AppText(
                  text: item['content'],
                  color: Colors.black54,
                  size: 14,
                ),
                ResponsiveButton(
                  onPress: () {
                    Navigator.pushNamed(context, 'application_det');
                  },
                  width: 80,
                )
              ],
            ),
          );
        },
        itemExtent: 30,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
