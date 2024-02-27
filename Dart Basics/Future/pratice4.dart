/*
4. Write a Dart function named fetchDataWithTimeout that simulates fetching data from a remote server asynchronously using a Future with timeout. The function should return a Future that resolves to a string "Data fetched successfully!" if the data is fetched within 5 seconds. If the data fetch operation exceeds 5 seconds, the function should throw a TimeoutException. Use async, await, and Future.delayed() for timeout handling.
*/

Future<String> fetchDataWithTimeout(int i) {
  if (i < 5) {
    return Future.delayed(
        Duration(seconds: i), () => Future.value('Data fetched successfully!'));
  } else {
    return Future.delayed(
        Duration(seconds: 5), () => throw TimeoutException('TimeOut!'));
  }
}

class TimeoutException implements Exception {
  String message;
  TimeoutException(this.message);

  @override
  String toString() {
    return '$message';
  }
}

void main() async {
  try {
    var data = await fetchDataWithTimeout(4);
    print(data);
  } catch (e) {
    print(e);
  }
}
