import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/projects/projects_controller.dart';
import 'package:portfolio/app/modules/projects/projects_page.dart';

class ProjectsModule extends Module {
  @override
  void binds(Injector i) {
    i.add(ProjectsController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (_) => const ProjectsPage());
  }
}
