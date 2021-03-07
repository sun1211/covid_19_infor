import 'package:covid_19_infor/constants.dart';
import 'package:covid_19_infor/screen/home/components/prevention.dart';
import 'package:covid_19_infor/screen/home/components/symtom_items.dart';
import 'package:flutter/material.dart';

import 'footer.dart';
import 'header.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
                text: TextSpan(
                  text: "Symptoms of ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black87,
                  ),
                  children: [
                    TextSpan(
                      text: "COVID 19",
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16),
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  SymptomItems(
                    path: "assets/images/1.png",
                    text: "Fever",
                  ),
                  SymptomItems(
                    path: "assets/images/2.png",
                    text: "Dry Cough",
                  ),
                  SymptomItems(
                    path: "assets/images/3.png",
                    text: "Headache",
                  ),
                  SymptomItems(
                    path: "assets/images/4.png",
                    text: "Breathless",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Prevention",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16),
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Preventation(
                    path: "assets/images/a10.png",
                    text1: "WASH",
                    text2: "hands often",
                  ),
                  Preventation(
                    path: "assets/images/a4.png",
                    text1: "COVER",
                    text2: "your cough",
                  ),
                  Preventation(
                    path: "assets/images/a6.png",
                    text1: "ALWAYS",
                    text2: "clean",
                  ),
                  Preventation(
                    path: "assets/images/a9.png",
                    text1: "USE",
                    text2: "mask",
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
