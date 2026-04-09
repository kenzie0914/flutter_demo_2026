import 'package:http/http.dart';

class NetworkingManager {
  Future<void> getRequest() async {
    final uri = Uri.parse('https://catfact.ninja/fact');
    final response = await get(uri);
    print(response.statusCode);
    print(response.body);
  }

  Future<void> postRequest() async {}
}
