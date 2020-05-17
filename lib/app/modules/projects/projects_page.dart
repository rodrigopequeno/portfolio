import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/components/custom_drawer/custom_drawer_widget.dart';

import '../../shared/components/presentation/presentation_widget.dart';
import '../projects/translation/projects_page.i18n.dart';
import 'projects_controller.dart';
import 'widgets/information/information_widget.dart';

class ProjectsPage extends StatefulWidget {
  final String title;
  const ProjectsPage({Key key, this.title = "Projects"}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState
    extends ModularState<ProjectsPage, ProjectsController> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  _openDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      endDrawer: CustomDrawerWidget(),
      body: Center(
        child: ListView(
          controller: controller.scrollController,
          children: <Widget>[
            PresentationWidget(
              title: 'Projects'.i18n,
              subtitle:
                  """A collection of my projects\ndeveloped in recent years."""
                      .i18n,
              goDown: controller.goDown,
              openDrawer: _openDrawer,
            ),
            Container(
              height: size.height < 900 ? 900 : size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: 60,
                  ),
                  InformationWidget(),
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
