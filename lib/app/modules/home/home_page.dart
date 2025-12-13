import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/modules/home/enums/sub_tab_home.dart';
import 'package:portfolio/app/modules/home/home_controller.dart';
import 'package:portfolio/app/shared/components/custom_drawer/custom_drawer_widget.dart';
import 'package:portfolio/app/shared/components/presentation/presentation_widget.dart';

//ignore_for_file: public_member_api_docs

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, this.title = "Home"});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final AutoSizeGroup myGroup = AutoSizeGroup();
  late final HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = Modular.get<HomeController>();
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final carouselOptions = CarouselOptions(
      viewportFraction: 1.0,
      enableInfiniteScroll: false,
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
              title: AppLocalizations.of(context)!.presentationTitle,
              subtitle: AppLocalizations.of(context)!.presentationSubtitle,
              goDown: controller.goDown,
              openDrawer: _openDrawer,
            ),
            Visibility(
              visible: size.width > 800,
              replacement: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: SubTabHome.values
                    .map(
                      (value) => Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 40,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      value.title(context),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(fontSize: 30),
                                    ),
                                    Container(
                                      width: size.width * 0.2 < 100
                                          ? 100
                                          : size.width * 0.2,
                                      height: size.height * 0.005,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.7,
                              child: value.subTab,
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
              child: SizedBox(
                height: size.height > 900 ? size.height : 900,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const SizedBox(
                      height: 60,
                      width: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: size.width * 0.8,
                          height: 52,
                          child: Center(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: SubTabHome.values.length,
                              itemBuilder: (_, index) {
                                return TextButton(
                                  onPressed: () {
                                    controller.goIndex(index);
                                  },
                                  child: SizedBox(
                                    width: size.width * 0.8 / 5.2,
                                    child: Center(
                                      child: AutoSizeText(
                                        SubTabHome.values
                                            .toList()[index]
                                            .title(context),
                                        maxLines: 1,
                                        group: myGroup,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
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
                          itemCount: SubTabHome.values.length,
                          carouselController: controller.carouselController,
                          itemBuilder: (_, index, realIndex) {
                            return SubTabHome.values.toList()[index].subTab;
                          },
                          options: carouselOptions,
                        ),
                      ],
                    ),
                    if (size.height > 900)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 40,
                          ),
                          child: SizedBox(
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
            ),
          ],
        ),
      ),
    );
  }
}
