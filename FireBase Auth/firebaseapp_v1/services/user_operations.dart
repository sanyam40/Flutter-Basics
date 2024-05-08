import 'package:firebase_auth/firebase_auth.dart';
import '../models/message.dart';
import '../models/user.dart';
import '../utlis/constant.dart';

class UserOperations {
  // add() {} --> new user registration

  // read() {} --> authenticate user

  // update() {} --> update an existing user

  // remove() {} --> deactivate the user account

  // Step 1: Create an instance of firebase Auth service.
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // register
  Future<Message> add(Userr seller) async {
    //  If registration is successful
    try {
      await _auth.createUserWithEmailAndPassword(
          email: seller.userId, password: seller.password);
      Message msg = Message.takeMessage(
          message: 'Registration is successful!', code: Constants.SUCCESS);
      return msg;
    }
    //  throws exception in case of failure & returns registration failed message
    catch (err) {
      return Message.takeMessage(
          message: 'Registration Failed!', code: Constants.FAIL);
    }
  }

  // // login
  // Future<Message> read(User user) async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(
  //         email: user.userId, password: user.password);
  //     return Message.takeMessage(
  //         message: 'Login successful!', code: Constants.SUCCESS);
  //   } catch (err) {
  //     return Message.takeMessage(
  //         message: 'Login Failed!', code: Constants.FAIL);
  //   }
  // }

  // change password
  update() {}

  // Account deactivate
  remove() {}
}
