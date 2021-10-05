import 'package:flutter_modular/flutter_modular.dart';

import 'projects_controller.dart';
import 'projects_page.dart';

class ProjectsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ProjectsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ProjectsPage()),
  ];
}
