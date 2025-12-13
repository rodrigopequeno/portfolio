import 'package:portfolio/app/modules/contact/utils/contacts.dart';
import 'package:url_launcher/url_launcher.dart';

//ignore: public_member_api_docs
class ContactController {
  Future<void> launchURL(Contacts typeContact) async {
    if (await canLaunchUrl(Uri.parse(typeContact.link))) {
      await launchUrl(Uri.parse(typeContact.link));
    } else {
      throw 'Could not launch ${typeContact.link}';
    }
  }
}
