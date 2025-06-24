void main(List<String> args) {
  final admin = Admin(
    specialAdminField: 3,
    firstName: 'firstName',
    lastName: 'lastName',
  );

  final bot = ChatBot('123');

  bot.sendElevatedMessage('hello from bot');
  admin.sendElevatedMessage('hello from admin');
}

class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  // void sendElevatedMessage(String text) {
  //   print('Sending a message with elevated importance: $text');
  // }
}

// Both Admin and ChatBot can send
// elevated messages. Therefore, the code
// is duplicated between Admin and ChatBot.
// And since we should aspire to writing DRY
// code we can take the following approach.

// 1. Move this method to User, and in doing
// so all the classes that extends User will
// have access to this common method. But the
// problem is that ChatBot does not extend
// User, hence the duplication problem is
// still not fully resolved.
// ChatBot should not extend user simply
// because it is not a user. (So we cannot
// take this approach)

// 2. We create a separate class named
// ElevatedClient and move this method
// inside there and make Admin and ChatBot
// extend this class. But multiple inheritance
// is prohibited in Dart. (So we cannot
// take this approach)

// class ElevatedClient {
//   void sendElevatedMessage(String text) {
//     print('Sending a message with elevated importance: $text');
//   }
// }

// class Admin extends User, ElevatedClient
// {...}
// class ChatBot extends ElevatedClient {...}

// 3. Use the above class but instead of
// extending use a Mixin, and make the classes
// use them.
// This means, that Admin or ChatBot
// is a type of ElevatedClient. Casting
// an object of Admin or ChatBot to
// ElevatedClient is possible and
// ChatBot(...) is ElevatedClient
// Admin(...) is ElevatedClient

mixin ElevatedClient {
  void sendElevatedMessage(String text) {
    print('Sending a message with elevated importance: $text');
  }
}

class Admin extends User with ElevatedClient {
  final double specialAdminField;

  Admin({
    required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName, lastName);

  // void sendElevatedMessage(String text) {
  //   print('Sending a message with elevated importance: $text');
  // }
}

class ChatBot with ElevatedClient {
  final String id;

  ChatBot(this.id);

  // void sendElevatedMessage(String text) {
  //   print('Sending a message with elevated importance: $text');
  // }
}
