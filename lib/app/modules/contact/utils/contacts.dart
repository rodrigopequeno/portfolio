enum Contacts {
  linkedIn,
  github,
  mail,
  whatsApp,
  instagram,
}

extension ContactsExtension on Contacts {
  String get link {
    switch (this) {
      case Contacts.linkedIn:
        return 'https://www.linkedin.com/in/rodrigopequeno/';
      case Contacts.github:
        return 'https://github.com/rodrigopequeno';
      case Contacts.mail:
        return 'mailto:rodrigo.pequeno6@gmail.com';
      case Contacts.whatsApp:
        return 'https://api.whatsapp.com/send?phone=5575992531577';
      case Contacts.instagram:
        return 'https://www.instagram.com/rodrigopeq/';
    }
  }

  String get fileName {
    String typeContact;
    switch (this) {
      case Contacts.linkedIn:
        typeContact = "in";
      case Contacts.github:
        typeContact = "github";
      case Contacts.mail:
        typeContact = 'mail';
      case Contacts.whatsApp:
        typeContact = 'whatsapp';
      case Contacts.instagram:
        typeContact = 'instagram';
    }
    return 'icon_$typeContact.png';
  }
}
