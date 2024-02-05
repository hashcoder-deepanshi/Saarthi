import 'package:flutter/material.dart';
import 'package:saarthi/widget/app_large_text.dart';
import 'package:saarthi/widget/app_text.dart';

class Application_det extends StatefulWidget {
  const Application_det({super.key});
  _Application_detState createState() => _Application_detState();
}

class _Application_detState extends State<Application_det> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text('Application Details'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.03),
                        spreadRadius: 10,
                        blurRadius: 3),
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 25, right: 20, top: 20),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.bar_chart),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/IMG1.JPG"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: (size.width - 40) * 0.6,
                          child: Column(children: [
                            AppLarge(
                              text: 'Deepanshi',
                              color: Colors.black54,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AppText(
                              text: 'PPO No. : 8970',
                              size: 13,
                              color: Colors.black54,
                            )
                          ]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Submitted On",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                      Text("Feb 06,2024",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54)),
                    ],
                  )),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 17, right: 17),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.03),
                                    spreadRadius: 10,
                                    blurRadius: 3)
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 20, bottom: 10, top: 10),
                              child: Row(children: [
                                Container(
                                  height: 58,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.calendar_today_outlined),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    width: (size.width - 90) * 0.7,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "January",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "In progress",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.yellow.shade300,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            margin:
                                EdgeInsets.only(top: 10, left: 17, right: 17),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.03),
                                    spreadRadius: 10,
                                    blurRadius: 3)
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 20, bottom: 10, top: 10),
                              child: Row(children: [
                                Container(
                                  height: 58,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.calendar_today_outlined),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    width: (size.width - 90) * 0.7,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "December",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Recieved",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.green.shade300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          )),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
