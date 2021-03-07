import 'package:covid_19_infor/components/chart_widget.dart';
import 'package:covid_19_infor/screen/Detail/components/static_card.dart';
import 'package:flutter/material.dart';

class StaticLayout extends StatelessWidget {
  const StaticLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(24),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              child: DonutPieChart.withSampleData(),
            ),
            SizedBox(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                StaticCard(
                  color: Colors.blueAccent,
                  title: "Confirmed",
                  value: "23,29,539",
                ),
                StaticCard(
                  color: Colors.yellowAccent,
                  title: "Recovered",
                  value: "5,92,229",
                ),
                StaticCard(
                  color: Colors.redAccent,
                  title: "Deaths",
                  value: "1,60,717",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
