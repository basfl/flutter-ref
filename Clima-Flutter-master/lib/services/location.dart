import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double altitude;
  Position position;
  Future<void> getCurrentLocation() async {
    print("!!!!!!!!!!!!!!!!!!!!!!!");
    try {
      position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
      longitude = position.longitude;
      altitude = position.altitude;
      print("inside long->"+longitude.toString()+" alt->"+altitude.toString());
    } catch (exception) {
      print(exception);
    }
  }
}
