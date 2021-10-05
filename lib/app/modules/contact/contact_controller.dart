import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

import 'utils/contacts.dart';

part 'contact_controller.g.dart';

class ContactController = _ContactControllerBase with _$ContactController;

abstract class _ContactControllerBase with Store {
  Future<void> launchURL(Contacts typeContact) async {
    if (await canLaunch(typeContact.link)) {
      await launch(typeContact.link);
    } else {
      throw 'Could not launch ${typeContact.link}';
    }
  }
}
