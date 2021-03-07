import 'package:covid_19_infor/constants.dart';
import 'package:covid_19_infor/screen/Detail/detail_screen.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailScreen(),
          ),
        );
      },
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(color: Colors.white),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 1),
              spreadRadius: 1,
              blurRadius: 1,
            )
          ],
        ),
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/map.png"),
            SizedBox(width: 25),
            RichText(
              text: TextSpan(
                text: "CASES\n",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
                children: [
                  TextSpan(
                    text: "Overview Worldwide\n",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: "21.118.594 confirmed",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
