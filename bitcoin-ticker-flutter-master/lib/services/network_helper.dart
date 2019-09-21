import 'package:http/http.dart' as http;
import "dart:convert";

class NetwrokHelper {
  NetwrokHelper({this.url});
  String url;
  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      //print(response.body);
      String data = response.body;
      // var is dynamic type
      var decodedData = jsonDecode(data);
      print(decodedData.toString());
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }

  Future getData1() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      //print(response.body);
      String data = response.body;
      // var is dynamic type
      var decodedData = jsonDecode(data);
      print(decodedData.toString());
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
