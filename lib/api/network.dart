// Imports the HTTP library
import 'package:http/http.dart';

class Network {
  final String url;

  /// The [Network class] has a constructor that takes a string URL
  Network(this.url);

  /// Includes one asynchronous method called [getData()]
  Future getData() async {
    print('Calling uri: $url');
    // Uses the HTTP GET method with your URL and awaits a response
    Response response = await get(url);
    // Checks the status code. 200 is OK. Anything else is an error.
    if (response.statusCode == 200) {
      // Returns the result
      return response.body;
    } else {
      print(response.statusCode);
    }
  }
}
