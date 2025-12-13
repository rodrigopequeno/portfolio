import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/modules/projects/projects_controller.dart';
import 'package:portfolio/app/modules/projects/widgets/information/information_widget.dart';
import 'package:portfolio/app/shared/components/custom_drawer/custom_drawer_widget.dart';
import 'package:portfolio/app/shared/components/presentation/presentation_widget.dart';

class ProjectsPage extends StatefulWidget {
  final String title;
  const ProjectsPage({super.key, this.title = "Projects"});

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late final ProjectsController controller;

  @override
  void initState() {
    super.initState();
    controller = Modular.get<ProjectsController>();
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
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
              title: AppLocalizations.of(context)!.projectsTitle,
              subtitle: AppLocalizations.of(context)!.projectsSubtitle,
              goDown: controller.goDown,
              openDrawer: _openDrawer,
            ),
            SizedBox(
              height: size.height < 900 ? 900 : size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const SizedBox(
                    height: 130,
                    width: 60,
                  ),
                  InformationWidget(),
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
          ],
        ),
      ),
    );
  }
}
