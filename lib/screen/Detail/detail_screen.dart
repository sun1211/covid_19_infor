import 'package:covid_19_infor/constants.dart';
import 'package:covid_19_infor/screen/Detail/components/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Body(),
    );
  }
}
