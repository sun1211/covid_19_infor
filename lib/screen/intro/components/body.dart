import 'package:covid_19_infor/constants.dart';
import 'package:covid_19_infor/size_config.dart';
import 'package:flutter/material.dart';

import 'foot.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kPrimaryColor,
            kPrimaryColor.withOpacity(.5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width * .75,
              child: Image.asset("assets/images/virus.png"),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .25,
            right: 25,
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              child: Image.asset("assets/images/person.png"),
            ),
          ),
          Positioned(
            bottom: 50,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Coronavirus disease (COVID-19)",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "is an infectianus disease caused by a new\nvirus.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25),
                  Foot(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
