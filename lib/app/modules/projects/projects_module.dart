import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/projects/projects_controller.dart';
import 'package:portfolio/app/modules/projects/projects_page.dart';

class ProjectsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ProjectsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const ProjectsPage()),
  ];
}
