import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';

const api_key = "d40e5b8211d90f1aa775399a40c60dbd";

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // Location position = Location();
  double longitude;
  double latitude;
  double lat;
  @override
  void initState() {
    super.initState();
    //  position.getCurrentLocation();
    getWeatherDataLocation1();
  }

  void getWeatherDataLocation1() async {
    WeatherModel weather = WeatherModel();
    var weatherData = await weather.getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  void getWeatherDataLocation() async {
    print("############");
    Location location = Location();
    await location.getCurrentLocation();
    var loc = location.position;
    print(loc);
    longitude = loc.longitude;
    lat = loc.latitude;
    print(lat);
    print(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$api_key');
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$api_key';
    String url1 =
        "https://api.openweathermap.org/data/2.5/weather?lat=39.29&lon=-80.24&appid=$api_key&units=metric";
    NetworkHelper networkHelper = NetworkHelper(url: url1);
    var weatherData = await networkHelper.getData();

    // int condition = weatherData['weather'][0]['id'];
    //  print(condition);
    // double temperature = weatherData['main']['temp'];
    //  print(temperature);
    //  String cityName = weatherData['name'];
    //  print(cityName);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
