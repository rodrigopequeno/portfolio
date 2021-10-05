import 'package:flutter/material.dart';
import '../custom_app_bar/custom_app_bar_widget.dart';

class PresentationWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() openDrawer;
  final void Function(double) goDown;

  const PresentationWidget({
    Key? key,
    required this.goDown,
    required this.title,
    required this.subtitle,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Theme.of(context).primaryColor,
      height: size.height > 900 ? size.height : 900,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomAppBarWidget(
            openDrawer: openDrawer,
          ),
          SizedBox(
            width: size.width * 0.5,
            height: size.height * 0.5,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          size.height > 900
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 40),
                    child: Container(
                      width: 60,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_downward,
                          size: 50,
                        ),
                        onPressed: () {
                          goDown(size.height);
                        },
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
