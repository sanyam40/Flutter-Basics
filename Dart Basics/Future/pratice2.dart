/* 2. Write a Dart function named fetchUserData that simulates fetching user data from a remote server asynchronously using a Future. The function should take a user ID as a parameter and return a Future that resolves to a Map representing the user's data (e.g., name, age, email). Inside the function, use the Future.delayed constructor to simulate a network delay of 3 seconds, and then return a Future that resolves to a Map containing dummy user data. */

Future<Map<String, dynamic>> fetchUserData(int id) => Future.delayed(
    Duration(seconds: 3),
    () => Future.value(
        {"name": "Sanyam", "age": 20, "email": "sanyam@gmail.com"}));

void main() async {
  var data = await fetchUserData(1);
  print(data);
}
