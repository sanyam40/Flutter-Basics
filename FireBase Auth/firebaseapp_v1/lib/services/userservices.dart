import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebaseapp/model/message.dart';
import 'package:firebaseapp/utlis/constants.dart';
import 'package:firebaseapp/model/user.dart';

class UserOperations {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

  // Register a new user
  Future<Message> add(User user) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: user.username, password: user.password);
      return Message.takeMessage(
          message: 'Registration is successful!', code: Constants.SUCCESS);
    } catch (err) {
      return Message.takeMessage(
          message: 'Registration Failed!', code: Constants.FAIL);
    }
  }

  // Login with existing user credentials
  Future<Message> read(User user) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: user.username, password: user.password);
      return Message.takeMessage(
          message: 'Login successful!', code: Constants.SUCCESS);
    } catch (err) {
      return Message.takeMessage(
          message: 'Login Failed!', code: Constants.FAIL);
    }
  }
}
