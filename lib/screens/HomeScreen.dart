import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/homebg.jpg"),
                  fit: BoxFit.cover),
            ),
            child: // Foreground widget here
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                  SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width,
                            height: 160,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.all(0),
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                  padding: EdgeInsets.all(8),
                                  width: 250,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/home1.jpg"),
                                        fit: BoxFit.cover),
                                    color: Color(0xff000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                  padding: EdgeInsets.all(8),
                                  width: 250,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/home2.jpg"),
                                        fit: BoxFit.cover),
                                    color: Color(0xff000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                  padding: EdgeInsets.all(8),
                                  width: 250,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/home3.jpg"),
                                        fit: BoxFit.cover),
                                    color: Color(0xff000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 70, 16, 0),
                                padding: EdgeInsets.all(8),
                                width: double.infinity,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Text(
                                  "The app is to guide your career path. \n\nAll you have to do is log in everything will be able on your dashboard including many blogs about different careers, personality test and many more. \n\nThis app will be the solution to all your queries and problems in your career. It would also help you provide relevant data as per your career related needs.",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                ])));
  }
}
