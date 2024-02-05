import 'package:flutter/material.dart';
import 'package:saarthi/misc/colors.dart';
import 'package:saarthi/pages/featuresPages/calossal.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';

Color hexToColor(String hexCode) {
  final int colorValue = int.parse(hexCode.substring(1, 7), radix: 16);
  return Color(colorValue | 0xFF000000);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var features = {
    "upload": "document",
    "Track": "track",
    "Translate": "translate",
    "Help": "application",
  };

  List<IconData> _icons = [
    Icons.upload,
    Icons.analytics,
    Icons.transcribe,
    Icons.help,
  ];
  

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding :EdgeInsets.only(left: 8, top :2,bottom: 2),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: Image.asset(
                      'assets/logo/logo_1.png',
                    ),
            ),
          ),
          title: Center(
            child: Text(
              "Saarthi",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 26,
                fontStyle: FontStyle.italic,
              ),
            ),

          ),
          backgroundColor: hexToColor("#FFA07A"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu,size:40,))],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10,left : 10),
                child: AppLarge(text: 'Discover'),
              ),
              MyCarouselSlider(),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLarge(
                      text: 'Explore More',
                      size: 22,
                    ),
                    AppText(
                      text: 'See All',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: height * 0.3,
                width: double.maxFinite,
                child: Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2,
                    ),
                    itemCount: features.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FeatureContainer(
                        icon: _icons[index],
                        color: darkOrange,
                        text : features.keys.elementAt(index),
                        onPress: () {
                          Navigator.pushNamed(context, features.values.elementAt(index));
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureContainer extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPress;
  final text;

  const FeatureContainer({
    Key? key,
    required this.icon,
    required this.color,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
        
          right: 5,
          left: 5,
        ),
        padding: EdgeInsets.only(top:10),
        // width: 10,
        // height: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color.withOpacity(0.5),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
              size: 50,
            ),
            Text('$text',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,),),
          ],

        ),
      ),
    );
  }
}




 