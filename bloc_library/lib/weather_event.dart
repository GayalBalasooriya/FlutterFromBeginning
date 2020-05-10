import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherEvent{
  //WeatherEvent([List props = const []]) : super();
}

class GetWeather extends WeatherEvent {
  final String cityName;

  //GetWeather(this.cityName) : super([cityName]);
  GetWeather(this.cityName);
}