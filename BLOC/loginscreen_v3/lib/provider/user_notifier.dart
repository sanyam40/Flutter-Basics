import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:loginscreen/model/user.dart';

class UserNotifier extends ChangeNotifier {
  final List<User> _userList = [];

  UnmodifiableListView<User> get userList => UnmodifiableListView(_userList);

  addUser(User user) {
    _userList.add(user);
    notifyListeners();
  }

  deleteUser(index) {
    _userList.removeWhere((user) => user.username == userList[index].username);
    notifyListeners();
  }
}
