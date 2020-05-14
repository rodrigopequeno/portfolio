import 'package:flutter_modular/flutter_modular.dart';

import 'projects_controller.dart';
import 'projects_page.dart';
import 'widgets/information/information_controller.dart';

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
