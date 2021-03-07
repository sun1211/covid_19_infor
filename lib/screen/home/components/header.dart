import 'package:covid_19_infor/components/custom_appbar_widget.dart';
import 'package:covid_19_infor/constants.dart';
import 'package:flutter/material.dart';

import 'button_layout.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Image.asset("assets/images/virus2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBarWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "COVID 19",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Coronavirus Relief Fund",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "to this fund will help to stop the virus's spread and give\ncommunitieson the font lines.",
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(height: 25),
              ButtonLayout(),
            ],
          )
        ],
      ),
    );
  }
}
