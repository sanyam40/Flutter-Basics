class User {
  String username;
  String password;
  int age;

  User({required this.username, required this.password, required this.age});

  User.takeInput(
      {required this.username, required this.password, required this.age});
}
