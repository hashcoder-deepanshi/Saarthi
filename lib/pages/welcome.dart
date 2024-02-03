import 'package:flutter/material.dart';
import 'package:saarthi/misc/colors.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';
import 'package:saarthi/widget/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["login.png", "register.png", "login.png"];
  List slidertext = [
    "saathi is a day to day companinon of old age peoples providing them help and assistance in various tasks",
    "wonderful way to start your journey with government documents ",
    "Beat the old age with our awesome apps"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/' + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLarge(text: 'SAARTHI'),
                        AppText(text: 'Aapka Saathi', size: 30),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 275,
                          child: AppText(
                            text: slidertext[index],
                            size: 14,
                          ),
                        ),
                        SizedBox(
                          height: 55,
                        ),
                        ResponsiveButton(
                          width: 120,
                          onPress: () {
                            Navigator.pushNamed(context, 'register');
                          },
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? AppColor.mainButtoncolor
                                  : AppColor.mainButtoncolor.withOpacity(0.4)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
