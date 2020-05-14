import 'package:flutter/material.dart';

class CustomAppBarWidget extends PreferredSize {
  CustomAppBarWidget({Key key, Widget title, Color color, TextStyle style1})
      : super(
          key: key,
          preferredSize: Size.fromHeight(100),
          child: Container(
            color: color ?? Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "RP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontFamily: 'Exotc350 Bd BT',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'about',
                            style: style1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'portfolio',
                              style: style1,
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'contact',
                            style: style1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
}