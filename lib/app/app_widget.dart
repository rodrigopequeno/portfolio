import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i18n_extension/i18n_widget.dart';

//ignore: public_member_api_docs
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff0c2461);
    const secondaryColor = Color(0xffECF2FA);
    return MaterialApp(
      title: 'Rodrigo Pequeno',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', "US"),
        const Locale('pt', "BR"),
      ],
      theme: ThemeData(
        primaryColor: primaryColor,
        secondaryHeaderColor: secondaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white, fontFamily: 'Patua One'),
          headline2: TextStyle(color: Colors.white, fontFamily: 'Patua One'),
          headline5: TextStyle(
            color: primaryColor,
            fontFamily: 'Patua One',
            fontSize: 50,
          ),
          subtitle1: TextStyle(
            color: Colors.white,
            fontFamily: 'Baloo 2',
            fontSize: 30,
          ),
          subtitle2: TextStyle(
            color: primaryColor,
            fontFamily: 'Patua One',
            fontSize: 30,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
            fontFamily: 'Baloo 2',
            fontSize: 40,
          ),
        ),
      ),
      initialRoute: '/',
      builder: (context, widget) {
        return I18n(child: widget!);
      },
    ).modular();
  }
}
