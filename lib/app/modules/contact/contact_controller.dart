import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

part 'contact_controller.g.dart';

class ContactController = _ContactControllerBase with _$ContactController;

abstract class _ContactControllerBase with Store {
  final Map<String, String> contactMethods = {
    'in': 'https://www.linkedin.com/in/rodrigopequeno/',
    'github': 'https://github.com/rodrigopequeno',
    'mail': 'mailto:rodrigo.pequeno6@gmail.com',
    'whatsapp': 'https://api.whatsapp.com/send?phone=5575992531577',
    'instagram': 'https://www.instagram.com/rodrigopeq/'
  };

  @action
  List<String> getTypesContact() => contactMethods.keys.toList();

  @action
  //ignore: type_annotate_public_apis
  launchURL(String typeContact) async {
    if (await canLaunch(contactMethods[typeContact])) {
      await launch(contactMethods[typeContact]);
    } else {
      throw 'Could not launch $contactMethods[typeContact]';
    }
  }
}
