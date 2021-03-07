import 'package:flutter/material.dart';

class ButtonLayout extends StatelessWidget {
  const ButtonLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text(
                "DONATE NOW",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: RaisedButton(
              color: Colors.red,
              onPressed: () {},
              child: Text(
                "EMERGENCY",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ],
      ),
    );
  }
}
