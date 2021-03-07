import 'package:covid_19_infor/components/custom_appbar_widget.dart';
import 'package:covid_19_infor/constants.dart';
import 'package:covid_19_infor/screen/Detail/components/gender.dart';
import 'package:covid_19_infor/screen/Detail/components/static_layout.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          //top images
          Container(
            height: 275,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.only(top: 25),
            child: Image.asset("assets/images/virus2.png"),
          ),
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //app bar
                CustomAppBarWidget(),
                //title
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "STATISTICS",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                //static layout
                StaticLayout(),
                //gender layout
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Gender(
                        iconData: FlutterIcons.male,
                        color: Colors.orangeAccent,
                        title: "MALE",
                        value: "23.9%",
                      ),
                      SizedBox(width: 10),
                      Gender(
                        iconData: FlutterIcons.female,
                        color: Colors.pinkAccent,
                        title: "FEMALE",
                        value: "34.9%",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: RichText(
                    text: TextSpan(
                      text: "Global Cases of ",
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
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    height: 170,
                    child: Center(child: Image.asset("assets/images/map.png")),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
