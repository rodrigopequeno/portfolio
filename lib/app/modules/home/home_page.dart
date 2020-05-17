import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/components/custom_drawer/custom_drawer_widget.dart';
import '../../shared/components/presentation/presentation_widget.dart';
import '../home/translation/home_page.i18n.dart';
import 'home_controller.dart';
import 'widgets/about/about_widget.dart';
import 'widgets/education/education_widget.dart';
import 'widgets/experience/experience_widget.dart';
import 'widgets/skill/skill_widget.dart';

//ignore_for_file: public_member_api_docs

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final AutoSizeGroup myGroup = AutoSizeGroup();

  final Map<String, StatelessWidget> pages = {
    'about': AboutWidget(),
    'skill': SkillWidget(),
    'education': EducationWidget(),
    'experience': ExperienceWidget()
  };

  _openDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final carouselOptions = CarouselOptions(
      initialPage: 0,
      viewportFraction: 1.0,
      autoPlay: false,
      reverse: false,
      enableInfiniteScroll: false,
      scrollDirection: Axis.horizontal,
      height: size.height < 900 ? 585 : size.height * 0.65,
    );

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      endDrawer: CustomDrawerWidget(),
      body: Center(
        child: ListView(
          controller: controller.scrollController,
          children: <Widget>[
            PresentationWidget(
              title: 'I\'m Rodrigo'.i18n,
              subtitle: 'a mobile devoloper'.i18n,
              goDown: controller.goDown,
              openDrawer: _openDrawer,
            ),
            Container(
              height: size.height < 900 ? 900 : size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: size.width * 0.8,
                        height: 60,
                        child: Center(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: pages.keys.length,
                            itemBuilder: (_, index) {
                              return FlatButton(
                                onPressed: () {
                                  controller.goIndex(index);
                                },
                                child: Container(
                                  width: size.width * 0.8 / 5.2,
                                  child: Center(
                                    child: AutoSizeText(
                                      pages.keys.toList()[index],
                                      maxLines: 1,
                                      group: myGroup,
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 30),
                        child: Container(
                          color: Theme.of(context).primaryColor,
                          height: size.height * 0.008,
                          width: size.width * 0.8,
                        ),
                      ),
                      CarouselSlider.builder(
                        itemCount: pages.values.length,
                        carouselController: controller.carouselController,
                        itemBuilder: (_, index) {
                          return pages.values.toList()[index];
                        },
                        options: carouselOptions,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 40),
                      child: Container(
                        width: 60,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_upward,
                            color: Theme.of(context).primaryColor,
                            size: 50,
                          ),
                          onPressed: controller.goTop,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
