import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vikalp/screens/walkthrough/wtpages/wtone.dart';
import 'package:vikalp/screens/walkthrough/wtpages/wtthree.dart';
import 'package:vikalp/screens/walkthrough/wtpages/wttwo.dart';

import '../Dashboard.dart';
import '../LoginScreen.dart';
import '../RegisterScreen.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({Key? key}) : super(key: key);

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough>
    with TickerProviderStateMixin {
  int wtPageNumber = 1;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this, upperBound: 1)
      ..forward(from: 0);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<double> tempDimensions = [
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height
    ];
    final double screenHeight = tempDimensions[0] > tempDimensions[1]
        ? tempDimensions[0]
        : tempDimensions[1];
    final double screenWidth = tempDimensions[0] > tempDimensions[1]
        ? tempDimensions[1]
        : tempDimensions[0];
    return Scaffold(
      floatingActionButton: (wtPageNumber != 3)
          ? SizedBox(
              width: screenWidth * 0.9,
              height: screenHeight * 0.06,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenHeight * 0.01),
                  ),
                ),
                onPressed: () {
                  wtPageNumber++;
                  setState(() {});
                  _animationController = AnimationController(
                      duration: const Duration(milliseconds: 500),
                      vsync: this,
                      upperBound: wtPageNumber.toDouble())
                    ..forward(from: wtPageNumber - 1);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "NEXT",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: screenWidth * 0.06,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.28),
                      child: Icon(
                        CupertinoIcons.arrow_right,
                        color: const Color(0xffffffff),
                        size: screenWidth * 0.07,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Wrap(
              children: [
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenHeight * 0.01),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: screenWidth * 0.06,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.04,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: "poppins",
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                              color: const Color(0xff615793),
                            ),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.04,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: screenWidth * 0.4,
                            child: const Divider(
                              color: Color(0xff756F86),
                              thickness: 1,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.4,
                            child: const Divider(
                              color: Color(0xff756F86),
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "OR",
                          style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: screenWidth * 0.04,
                            color: const Color(0xff756F86),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenHeight * 0.01),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    },
                    child: Text(
                      "Proceed without LOGIN",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: screenWidth * 0.06,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              height: screenHeight,
              width: screenWidth,
              child: AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: SizedBox(
                  height: screenHeight,
                  width: screenWidth,
                  child: (wtPageNumber == 1) ? const WTOne() : const WTThree(),
                ),
                secondChild: SizedBox(
                  height: screenHeight,
                  width: screenWidth,
                  child: const WTTwo(),
                ),
                crossFadeState: (wtPageNumber == 1 || wtPageNumber == 3)
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
            ),
            Positioned(
              top: 0,
              width: screenWidth * 0.6,
              right: screenWidth * 0.2,
              child: SafeArea(
                child: Container(
                  width: screenWidth * 0.6,
                  padding: EdgeInsets.only(top: screenHeight * 0.52),
                  child: AnimatedBuilder(
                      animation: _animationController,
                      builder: (_, __) {
                        // print(_animationController.value);
                        return SliderTheme(
                          data: SliderThemeData(
                            inactiveTrackColor: Color(0xff756F86),
                            activeTrackColor: const Color(0xff380955),
                            trackHeight: screenHeight * 0.007,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0,
                            ),
                            thumbColor: Colors.transparent,
                            overlayColor: Colors.transparent,
                            overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 0,
                            ),
                          ),
                          child: Slider(
                            value: _animationController.value,
                            min: 0,
                            max: 3,
                            onChanged: (value) {
                              print(_animationController.value);
                            },
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
