import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
const api_key = "d40e5b8211d90f1aa775399a40c60dbd";
const weatherURL="https://api.openweathermap.org/data/2.5/weather";
class WeatherModel {
  double longitude;
  double latitude;
  double lat;

  Future<dynamic> getCityWeather(String cityName) async{

    String url="https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$api_key&units=metric";
    NetworkHelper networkHelper=NetworkHelper(url: url);
    var weatherData=await networkHelper.getData();
    return weatherData;

  }
  Future<dynamic> getLocationWeather() async{
    ////////////////////////////////
    print("############");
    Location location = Location();
    await location.getCurrentLocation();
    var loc=location.position;
    print(loc);
    longitude = loc.longitude;
    lat = loc.latitude;
    print(lat);
    String latPercise=lat.toStringAsFixed(2);
    String lonPercise=longitude.toStringAsFixed(2);
    print('url->https://api.openweathermap.org/data/2.5/weather?lat=$latPercise&lon=$lonPercise&appid=$api_key');
    String url='https://api.openweathermap.org/data/2.5/weather?lat=$latPercise&lon=$lonPercise&appid=$api_key&units=metric';
    String url1="https://api.openweathermap.org/data/2.5/weather?lat=39.29&lon=-80.24&appid=$api_key&units=metric";
    NetworkHelper networkHelper=NetworkHelper(url: url);
    var weatherData=await networkHelper.getData();
    return weatherData;
    ////////////////////////////////

  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
