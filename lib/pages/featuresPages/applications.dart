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
      9,
      (index) => {
            "id": index,
            "title": "Item $index",
            "content": "Submitted On:"+Text(
  RndX.generateRandomDateBetween(start: DateTime(1988), 
  end: DateTime(1989)).toString(),
),,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppText(
                          text: item['content'],
                          color: Colors.black54,
                          size: 14,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        AppText(
                          text: item['content'],
                          color: Colors.black54,
                          size: 12,
                        ),
                      ],
                    ),
                    ResponsiveButton(
                      onPress: () {
                        Navigator.pushNamed(context, 'application_det');
                      },
                      width: 100,
                      height: 30,
                    )
                  ],
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
