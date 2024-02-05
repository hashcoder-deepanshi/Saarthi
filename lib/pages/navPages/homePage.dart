import 'package:flutter/material.dart';
import 'package:saarthi/misc/colors.dart';
import 'package:saarthi/pages/featuresPages/calossal.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List features = [
    "upload",
    "Track",
    "Translate",
    "Help",
  ];

  List<IconData> _icons = [
// The underscore declares a variable as private in dart.
    Icons.upload,
    Icons.analytics,
    Icons.transcribe,
    Icons.help,
  ];

  List<Color> _color = [
// The underscore declares a variable as private in dart.
    Colors.lightGreen,
    Colors.pink,
    Colors.lightBlue,
    Colors.yellowAccent,
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
          child: Row(children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            Expanded(child: Container()),
            Icon(
              Icons.menu,
              size: 38,
              color: Colors.black54,
            ),
          ]),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: AppLarge(text: 'Discover'),
        ),
        SizedBox(
          height: 18,
        ),
        //tabbar menu
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                //isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(
                    color: AppColor.mainButtoncolor, radius: 4),
                tabs: [
                  Tab(text: "Schemes"),
                  Tab(text: "Notification"),
                  Tab(
                    text: "Headlines",
                  )
                ]),
          ),
        ),
        Container(
  padding: const EdgeInsets.only(left: 20),
  height: 300,
  width: double.maxFinite,
  child: MyCarouselSlider(),
),
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
                  text: 'See All', /*Color*/
                )
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 120,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: features.length,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ListTile(
                      //   leading: Container(
                      //       width: 40,
                      //       height: 40,
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(100),
                      //           color: Colors.lightBlue.withOpacity(0.1)),
                      //       child: Icon(Icons.upload)),
                      // ),
                      FeatureContainer(
                          icon: _icons[index],
                          color: _color[index],
                          onPress: () {
                            Navigator.pushNamed(context, 'document');
                          }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                      ),
                      Container(
                        child: AppText(
                          text: features[index], /* color*/
                        ),
                      ),
                    ],
                  ),
                );
              },
            ))
      ]),
    );
  }
}

class FeatureContainer extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPress;

  const FeatureContainer(
      {super.key,
      required this.icon,
      required this.color,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          right: 10,
        ),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color.withOpacity(0.5),
        ),
        child: Icon(
          icon,
          color: color,
          size: 30,
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
