// ignore: file_names
import 'package:flutter/material.dart';
import 'package:loginscreen/provider/user_notifier.dart';
import 'package:provider/provider.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: Consumer<UserNotifier>(
        builder: (context, userNotifier, child) {
          return ListView.builder(
            itemCount: userNotifier.userList.length,
            itemBuilder: (context, index) {
              final user = userNotifier.userList[index];
              return ListTile(
                title: Text(user.username),
                subtitle: Text(user.password),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    userNotifier.deleteUser(index);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
