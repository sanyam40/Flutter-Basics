// 3. Write a Dart function named fetchDataWithRetry that fetches data from a remote server asynchronously using a Future with error handling and retry mechanism. The function should take a URL as a parameter and return a Future that resolves to the fetched data. Inside the function, use a loop to retry the network request up to 3 times in case of a network error or timeout. Use Future.delayed to add a delay of 2 seconds between retries. If the maximum number of retries is reached without success, throw a custom NetworkException indicating the failure.

Future fetchDataWithRetry(String url) {
  for (int i = 0; i < 3; i++)
    Future.delayed(Duration(seconds: 2), () => Future.value("Success : $url"));
  {
    return throw NetworkException(
        "error occured! Even afer 3 tries could not fetch data");
  }
}

class NetworkException implements Exception {
  String message;
  NetworkException(this.message);

  @override
  String toString() => 'NetworkException(message: $message)';
}

void main() async {
  try {
    var data = await fetchDataWithRetry("https://www.google.com");
    print(data);
  } catch (e) {
    print(e);
  }
}
