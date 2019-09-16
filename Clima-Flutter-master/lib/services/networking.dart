import 'package:http/http.dart' as http;
import "dart:convert";

class NetworkHelper {
  NetworkHelper({this.url});
  final String url;
  Future getData() async {
    http.Response response = await http.get(this.url);
    if (response.statusCode == 200) {
      print(response.body);
      String data = response.body;
      // var is dynamic type
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
