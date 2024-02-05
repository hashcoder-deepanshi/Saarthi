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
  List<String> features = ["upload", "Track", "Translate", "Help"];
  List<IconData> _icons = [
    Icons.upload,
    Icons.analytics,
    Icons.transcribe,
    Icons.help,
  ];
  List<Color> _color = [
    hexToColor("#FFA07A"),
    hexToColor("#FFA07A"),
    hexToColor("#FFA07A"),
    hexToColor("#FFA07A"),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            width: 200.0,
            height: 200.0,
            padding :EdgeInsets.only(left: 10),
            child: ClipOval(
      child: Image.asset(
        'assets/logo/logo_1.png',
        fit: BoxFit.cover,
        width: 200.0, // Adjust the width of the circular image
        height: 200.0, // Adjust the height of the circular image
      ),
    ),
          ),
          title: Center(
            child: Text(
              "Saarthi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: hexToColor("#FFA07A"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        color: _color[index],
                        onPress: () {
                          Navigator.pushNamed(context, 'document');
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

  const FeatureContainer({
    Key? key,
    required this.icon,
    required this.color,
    required this.onPress,
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
        // width: 10,
        // height: 10,
        decoration: BoxDecoration(
        
          borderRadius: BorderRadius.circular(50),
          color: color.withOpacity(0.5),
        ),
        child: Icon(
          icon,
          color: color,
          size: 50,
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
      configuration.size!.height - radius,
    );

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
