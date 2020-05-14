import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

//ignore: public_member_api_docs
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Rodrigo Pequeno',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        secondaryHeaderColor: Colors.blue[100],
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white, fontFamily: 'Patua One'),
          headline2: TextStyle(color: Colors.white, fontFamily: 'Patua One'),
          headline5: TextStyle(
            color: Colors.blue[900],
            fontFamily: 'Patua One',
            fontSize: 50,
          ),
          subtitle1: TextStyle(
            color: Colors.white,
            fontFamily: 'Baloo 2',
            fontSize: 30,
          ),
          subtitle2: TextStyle(
            color: Colors.blue[900],
            fontFamily: 'Patua One',
            fontSize: 30,
          ),
          bodyText2: TextStyle(
              color: Colors.black, fontFamily: 'Baloo 2', fontSize: 40),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
