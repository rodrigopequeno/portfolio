import 'package:portfolio/app/modules/projects/widgets/information/information_controller.dart';
import 'package:portfolio/app/modules/projects/projects_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/projects/projects_page.dart';

class ProjectsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InformationController()),
        Bind((i) => ProjectsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ProjectsPage()),
      ];

  static Inject get to => Inject<ProjectsModule>.of();
}
