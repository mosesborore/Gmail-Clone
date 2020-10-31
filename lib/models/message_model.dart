import 'package:first_app/models/user_model.dart';

class Email {
  final User sender;
  final String
      time; // woul usually be type DateTime Timestamp in production apps
  final String subject;
  final String body;
  bool isStarred;
  final bool unread;

  Email({
    this.sender,
    this.time,
    this.subject,
    this.body,
    this.isStarred,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'currentUser',
  address: 'Current User',
  imageUrl: 'assets/images/skull.png',
);

// USERS
final User github = User(
  id: 1,
  name: 'GitHub',
  address: 'github@github.com',
  imageUrl: 'assets/images/profile.png',
);

final User leetcode = User(
  id: 2,
  name: 'LeetCode',
  address: 'leetcode@leetcode.com',
  imageUrl: 'assets/images/profile.png',
);

final User postman = User(
  id: 3,
  name: 'Postman',
  address: 'news@postman.com',
  imageUrl: 'assets/images/profile.png',
);

final User google = User(
  id: 4,
  name: 'Google',
  address: 'google@google.com',
  imageUrl: null,
);

final User treasure = User(
  id: 5,
  name: 'Treasure',
  address: 'treasure@gmail.com',
  imageUrl: 'assets/images/profile.png',
);

final User hunters = User(
  id: 6,
  name: 'Hunters',
  address: 'hunters1234@gmail.com',
  imageUrl: null,
);

final User oceans = User(
  id: 6,
  name: 'Oceans',
  address: 'oceasnandseas@gmail.com',
  imageUrl: 'assets/images/profile.png',
);

final User sputnik = User(
  id: 6,
  name: 'Sputnik',
  address: 'satellite123@gmail.com',
  imageUrl: null,
);

// EXAMPLES OF THE EMAIL
List<Email> emails = [
  Email(
    sender: github,
    time: "06:30 PM",
    subject: 'Please verify your device',
    body: "Hey Pony! A sign in attempt requires further verification",
    isStarred: false,
    unread: false,
  ),
  Email(
    sender: leetcode,
    time: "07:30 AM",
    subject: 'Please verify your device',
    body: "Hey Pony! A sign in attempt requires further verification",
    isStarred: true,
    unread: false,
  ),
  Email(
    sender: postman,
    time: "5:59 AM",
    subject: 'Please verify your device',
    body: "Hey Pony! A sign in attempt requires further verification",
    isStarred: false,
    unread: true,
  ),
  Email(
    sender: google,
    time: "01:30 PM",
    subject: 'Please verify your device',
    body: "Hey Pony! A sign in attempt requires further verification",
    isStarred: false,
    unread: false,
  ),
  Email(
    sender: treasure,
    time: "06:30 PM",
    subject: 'Please verify your device',
    body: "Hey Pony! A sign in attempt requires further verification",
    isStarred: true,
    unread: true,
  ),
  Email(
    sender: hunters,
    time: "05:30 PM",
    subject: 'Please verify your device',
    body: "Hey Pony! A sign in attempt requires further verification",
    isStarred: false,
    unread: false,
  ),
  Email(
    sender: oceans,
    time: "07:30 PM",
    subject: 'Please verify your device',
    body: "Hey Pony! A sign in attempt requires further verification",
    isStarred: true,
    unread: true,
  ),
  Email(
    sender: sputnik,
    time: "00:30 AM",
    subject: 'Satellite or Movie',
    body: "Hey Man! A sign in attempt requires further verification",
    isStarred: true,
    unread: true,
  ),
];
