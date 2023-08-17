import 'dart:convert';
/// location : {"name":"London","region":"City of London, Greater London","country":"United Kingdom","lat":51.52,"lon":-0.11,"tz_id":"Europe/London","localtime_epoch":1692119753,"localtime":"2023-08-15 18:15"}
/// current : {"last_updated_epoch":1692118800,"last_updated":"2023-08-15 18:00","temp_c":23.0,"temp_f":73.4,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":300,"wind_dir":"WNW","pressure_mb":1017.0,"pressure_in":30.03,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":75,"feelslike_c":24.8,"feelslike_f":76.6,"vis_km":10.0,"vis_miles":6.0,"uv":6.0,"gust_mph":7.4,"gust_kph":11.9}
/// forecast : {"forecastday":[{"date":"2023-08-15","date_epoch":1692057600,"day":{"maxtemp_c":23.7,"maxtemp_f":74.7,"mintemp_c":13.9,"mintemp_f":57.0,"avgtemp_c":18.7,"avgtemp_f":65.7,"maxwind_mph":8.1,"maxwind_kph":13.0,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":66.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"uv":5.0},"astro":{"sunrise":"05:46 AM","sunset":"08:23 PM","moonrise":"04:07 AM","moonset":"08:37 PM","moon_phase":"Waning Crescent","moon_illumination":"2","is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1692054000,"time":"2023-08-15 00:00","temp_c":15.8,"temp_f":60.4,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":4.0,"wind_kph":6.5,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":62,"feelslike_c":15.8,"feelslike_f":60.4,"windchill_c":15.8,"windchill_f":60.4,"heatindex_c":15.8,"heatindex_f":60.4,"dewpoint_c":13.7,"dewpoint_f":56.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.5,"gust_kph":10.4,"uv":1.0},{"time_epoch":1692057600,"time":"2023-08-15 01:00","temp_c":15.4,"temp_f":59.7,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":247,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":53,"feelslike_c":15.4,"feelslike_f":59.7,"windchill_c":15.4,"windchill_f":59.7,"heatindex_c":15.4,"heatindex_f":59.7,"dewpoint_c":13.3,"dewpoint_f":55.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.3,"gust_kph":10.1,"uv":1.0},{"time_epoch":1692061200,"time":"2023-08-15 02:00","temp_c":15.0,"temp_f":59.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":88,"cloud":23,"feelslike_c":15.1,"feelslike_f":59.2,"windchill_c":15.1,"windchill_f":59.2,"heatindex_c":15.1,"heatindex_f":59.2,"dewpoint_c":13.1,"dewpoint_f":55.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.9,"gust_kph":11.2,"uv":1.0},{"time_epoch":1692064800,"time":"2023-08-15 03:00","temp_c":15.0,"temp_f":59.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":90,"cloud":19,"feelslike_c":14.8,"feelslike_f":58.6,"windchill_c":14.8,"windchill_f":58.6,"heatindex_c":14.9,"heatindex_f":58.8,"dewpoint_c":13.2,"dewpoint_f":55.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":1.0},{"time_epoch":1692068400,"time":"2023-08-15 04:00","temp_c":14.5,"temp_f":58.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":259,"wind_dir":"W","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":88,"cloud":10,"feelslike_c":14.2,"feelslike_f":57.6,"windchill_c":14.2,"windchill_f":57.6,"heatindex_c":14.4,"heatindex_f":57.9,"dewpoint_c":12.5,"dewpoint_f":54.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.1,"gust_kph":13.0,"uv":1.0},{"time_epoch":1692072000,"time":"2023-08-15 05:00","temp_c":13.9,"temp_f":57.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":257,"wind_dir":"WSW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":10,"feelslike_c":13.6,"feelslike_f":56.5,"windchill_c":13.6,"windchill_f":56.5,"heatindex_c":13.9,"heatindex_f":57.0,"dewpoint_c":11.8,"dewpoint_f":53.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":1.0},{"time_epoch":1692075600,"time":"2023-08-15 06:00","temp_c":14.3,"temp_f":57.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":83,"cloud":9,"feelslike_c":14.0,"feelslike_f":57.2,"windchill_c":14.0,"windchill_f":57.2,"heatindex_c":14.3,"heatindex_f":57.7,"dewpoint_c":11.6,"dewpoint_f":52.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.6,"gust_kph":12.2,"uv":4.0},{"time_epoch":1692079200,"time":"2023-08-15 07:00","temp_c":15.7,"temp_f":60.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":258,"wind_dir":"WSW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":75,"cloud":0,"feelslike_c":15.7,"feelslike_f":60.3,"windchill_c":15.7,"windchill_f":60.3,"heatindex_c":15.7,"heatindex_f":60.3,"dewpoint_c":11.3,"dewpoint_f":52.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":5.0},{"time_epoch":1692082800,"time":"2023-08-15 08:00","temp_c":17.3,"temp_f":63.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":260,"wind_dir":"W","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":67,"cloud":3,"feelslike_c":17.3,"feelslike_f":63.1,"windchill_c":17.3,"windchill_f":63.1,"heatindex_c":17.3,"heatindex_f":63.1,"dewpoint_c":11.2,"dewpoint_f":52.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.6,"gust_kph":12.2,"uv":5.0},{"time_epoch":1692086400,"time":"2023-08-15 09:00","temp_c":18.9,"temp_f":66.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":261,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":61,"cloud":13,"feelslike_c":18.9,"feelslike_f":66.0,"windchill_c":18.9,"windchill_f":66.0,"heatindex_c":18.9,"heatindex_f":66.0,"dewpoint_c":11.2,"dewpoint_f":52.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":5.0},{"time_epoch":1692090000,"time":"2023-08-15 10:00","temp_c":20.4,"temp_f":68.7,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.7,"wind_kph":10.8,"wind_degree":260,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":55,"cloud":30,"feelslike_c":20.4,"feelslike_f":68.7,"windchill_c":20.4,"windchill_f":68.7,"heatindex_c":20.4,"heatindex_f":68.7,"dewpoint_c":11.1,"dewpoint_f":52.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":6.0},{"time_epoch":1692093600,"time":"2023-08-15 11:00","temp_c":21.7,"temp_f":71.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":262,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":7,"feelslike_c":21.7,"feelslike_f":71.1,"windchill_c":21.7,"windchill_f":71.1,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.9,"dewpoint_f":51.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":6.0},{"time_epoch":1692097200,"time":"2023-08-15 12:00","temp_c":22.9,"temp_f":73.2,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":261,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":46,"cloud":65,"feelslike_c":24.5,"feelslike_f":76.1,"windchill_c":22.9,"windchill_f":73.2,"heatindex_c":24.5,"heatindex_f":76.1,"dewpoint_c":10.6,"dewpoint_f":51.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":5.0},{"time_epoch":1692100800,"time":"2023-08-15 13:00","temp_c":23.7,"temp_f":74.7,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":263,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":43,"cloud":54,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":23.7,"windchill_f":74.7,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":10.3,"dewpoint_f":50.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":6.0},{"time_epoch":1692104400,"time":"2023-08-15 14:00","temp_c":23.6,"temp_f":74.5,"is_day":1,"condition":{"text":"Overcast","icon":"//cdn.weatherapi.com/weather/64x64/day/122.png","code":1009},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":271,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":43,"cloud":100,"feelslike_c":24.7,"feelslike_f":76.5,"windchill_c":23.6,"windchill_f":74.5,"heatindex_c":24.7,"heatindex_f":76.5,"dewpoint_c":10.2,"dewpoint_f":50.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.2,"gust_kph":14.8,"uv":5.0},{"time_epoch":1692108000,"time":"2023-08-15 15:00","temp_c":22.1,"temp_f":71.8,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":276,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.01,"precip_mm":0.0,"precip_in":0.0,"humidity":49,"cloud":70,"feelslike_c":24.4,"feelslike_f":75.9,"windchill_c":22.1,"windchill_f":71.8,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.8,"dewpoint_f":51.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":10.3,"gust_kph":16.6,"uv":5.0},{"time_epoch":1692111600,"time":"2023-08-15 16:00","temp_c":21.8,"temp_f":71.2,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":277,"wind_dir":"W","pressure_mb":1017.0,"pressure_in":30.02,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":45,"feelslike_c":21.8,"feelslike_f":71.2,"windchill_c":21.8,"windchill_f":71.2,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.9,"dewpoint_f":51.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.5,"gust_kph":13.7,"uv":6.0},{"time_epoch":1692115200,"time":"2023-08-15 17:00","temp_c":21.8,"temp_f":71.2,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.0,"wind_kph":9.7,"wind_degree":274,"wind_dir":"W","pressure_mb":1017.0,"pressure_in":30.02,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":44,"feelslike_c":21.8,"feelslike_f":71.2,"windchill_c":21.8,"windchill_f":71.2,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":11.0,"dewpoint_f":51.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.1,"gust_kph":13.0,"uv":6.0},{"time_epoch":1692118800,"time":"2023-08-15 18:00","temp_c":21.6,"temp_f":70.9,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":258,"wind_dir":"WSW","pressure_mb":1017.0,"pressure_in":30.03,"precip_mm":0.0,"precip_in":0.0,"humidity":53,"cloud":47,"feelslike_c":21.6,"feelslike_f":70.9,"windchill_c":21.6,"windchill_f":70.9,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":11.5,"dewpoint_f":52.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":6.0},{"time_epoch":1692122400,"time":"2023-08-15 19:00","temp_c":20.6,"temp_f":69.1,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1018.0,"pressure_in":30.05,"precip_mm":0.0,"precip_in":0.0,"humidity":58,"cloud":46,"feelslike_c":20.6,"feelslike_f":69.1,"windchill_c":20.6,"windchill_f":69.1,"heatindex_c":20.6,"heatindex_f":69.1,"dewpoint_c":12.0,"dewpoint_f":53.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":6.0},{"time_epoch":1692126000,"time":"2023-08-15 20:00","temp_c":19.5,"temp_f":67.1,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1018.0,"pressure_in":30.07,"precip_mm":0.0,"precip_in":0.0,"humidity":63,"cloud":51,"feelslike_c":19.5,"feelslike_f":67.1,"windchill_c":19.5,"windchill_f":67.1,"heatindex_c":19.5,"heatindex_f":67.1,"dewpoint_c":12.2,"dewpoint_f":54.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":5.0},{"time_epoch":1692129600,"time":"2023-08-15 21:00","temp_c":18.6,"temp_f":65.5,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":4.5,"wind_kph":7.2,"wind_degree":249,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.08,"precip_mm":0.0,"precip_in":0.0,"humidity":67,"cloud":29,"feelslike_c":18.6,"feelslike_f":65.5,"windchill_c":18.6,"windchill_f":65.5,"heatindex_c":18.6,"heatindex_f":65.5,"dewpoint_c":12.3,"dewpoint_f":54.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":1.0},{"time_epoch":1692133200,"time":"2023-08-15 22:00","temp_c":18.0,"temp_f":64.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":243,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.08,"precip_mm":0.0,"precip_in":0.0,"humidity":70,"cloud":18,"feelslike_c":18.0,"feelslike_f":64.4,"windchill_c":18.0,"windchill_f":64.4,"heatindex_c":18.0,"heatindex_f":64.4,"dewpoint_c":12.4,"dewpoint_f":54.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.3,"gust_kph":10.1,"uv":1.0},{"time_epoch":1692136800,"time":"2023-08-15 23:00","temp_c":17.5,"temp_f":63.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":242,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.09,"precip_mm":0.0,"precip_in":0.0,"humidity":72,"cloud":15,"feelslike_c":17.5,"feelslike_f":63.5,"windchill_c":17.5,"windchill_f":63.5,"heatindex_c":17.5,"heatindex_f":63.5,"dewpoint_c":12.4,"dewpoint_f":54.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.6,"gust_kph":9.0,"uv":1.0}]}]}

WeatherResponceModel weatherResponceModelFromJson(String str) => WeatherResponceModel.fromJson(json.decode(str));
String weatherResponceModelToJson(WeatherResponceModel data) => json.encode(data.toJson());
class WeatherResponceModel {
  WeatherResponceModel({
      this.location, 
      this.current, 
      this.forecast,});

  WeatherResponceModel.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    current = json['current'] != null ? Current.fromJson(json['current']) : null;
    forecast = json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }
  Location? location;
  Current? current;
  Forecast? forecast;
WeatherResponceModel copyWith({  Location? location,
  Current? current,
  Forecast? forecast,
}) => WeatherResponceModel(  location: location ?? this.location,
  current: current ?? this.current,
  forecast: forecast ?? this.forecast,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    if (current != null) {
      map['current'] = current?.toJson();
    }
    if (forecast != null) {
      map['forecast'] = forecast?.toJson();
    }
    return map;
  }

}

/// forecastday : [{"date":"2023-08-15","date_epoch":1692057600,"day":{"maxtemp_c":23.7,"maxtemp_f":74.7,"mintemp_c":13.9,"mintemp_f":57.0,"avgtemp_c":18.7,"avgtemp_f":65.7,"maxwind_mph":8.1,"maxwind_kph":13.0,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":66.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"uv":5.0},"astro":{"sunrise":"05:46 AM","sunset":"08:23 PM","moonrise":"04:07 AM","moonset":"08:37 PM","moon_phase":"Waning Crescent","moon_illumination":"2","is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1692054000,"time":"2023-08-15 00:00","temp_c":15.8,"temp_f":60.4,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":4.0,"wind_kph":6.5,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":62,"feelslike_c":15.8,"feelslike_f":60.4,"windchill_c":15.8,"windchill_f":60.4,"heatindex_c":15.8,"heatindex_f":60.4,"dewpoint_c":13.7,"dewpoint_f":56.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.5,"gust_kph":10.4,"uv":1.0},{"time_epoch":1692057600,"time":"2023-08-15 01:00","temp_c":15.4,"temp_f":59.7,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":247,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":53,"feelslike_c":15.4,"feelslike_f":59.7,"windchill_c":15.4,"windchill_f":59.7,"heatindex_c":15.4,"heatindex_f":59.7,"dewpoint_c":13.3,"dewpoint_f":55.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.3,"gust_kph":10.1,"uv":1.0},{"time_epoch":1692061200,"time":"2023-08-15 02:00","temp_c":15.0,"temp_f":59.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":88,"cloud":23,"feelslike_c":15.1,"feelslike_f":59.2,"windchill_c":15.1,"windchill_f":59.2,"heatindex_c":15.1,"heatindex_f":59.2,"dewpoint_c":13.1,"dewpoint_f":55.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.9,"gust_kph":11.2,"uv":1.0},{"time_epoch":1692064800,"time":"2023-08-15 03:00","temp_c":15.0,"temp_f":59.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":90,"cloud":19,"feelslike_c":14.8,"feelslike_f":58.6,"windchill_c":14.8,"windchill_f":58.6,"heatindex_c":14.9,"heatindex_f":58.8,"dewpoint_c":13.2,"dewpoint_f":55.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":1.0},{"time_epoch":1692068400,"time":"2023-08-15 04:00","temp_c":14.5,"temp_f":58.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":259,"wind_dir":"W","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":88,"cloud":10,"feelslike_c":14.2,"feelslike_f":57.6,"windchill_c":14.2,"windchill_f":57.6,"heatindex_c":14.4,"heatindex_f":57.9,"dewpoint_c":12.5,"dewpoint_f":54.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.1,"gust_kph":13.0,"uv":1.0},{"time_epoch":1692072000,"time":"2023-08-15 05:00","temp_c":13.9,"temp_f":57.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":257,"wind_dir":"WSW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":10,"feelslike_c":13.6,"feelslike_f":56.5,"windchill_c":13.6,"windchill_f":56.5,"heatindex_c":13.9,"heatindex_f":57.0,"dewpoint_c":11.8,"dewpoint_f":53.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":1.0},{"time_epoch":1692075600,"time":"2023-08-15 06:00","temp_c":14.3,"temp_f":57.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":83,"cloud":9,"feelslike_c":14.0,"feelslike_f":57.2,"windchill_c":14.0,"windchill_f":57.2,"heatindex_c":14.3,"heatindex_f":57.7,"dewpoint_c":11.6,"dewpoint_f":52.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.6,"gust_kph":12.2,"uv":4.0},{"time_epoch":1692079200,"time":"2023-08-15 07:00","temp_c":15.7,"temp_f":60.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":258,"wind_dir":"WSW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":75,"cloud":0,"feelslike_c":15.7,"feelslike_f":60.3,"windchill_c":15.7,"windchill_f":60.3,"heatindex_c":15.7,"heatindex_f":60.3,"dewpoint_c":11.3,"dewpoint_f":52.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":5.0},{"time_epoch":1692082800,"time":"2023-08-15 08:00","temp_c":17.3,"temp_f":63.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":260,"wind_dir":"W","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":67,"cloud":3,"feelslike_c":17.3,"feelslike_f":63.1,"windchill_c":17.3,"windchill_f":63.1,"heatindex_c":17.3,"heatindex_f":63.1,"dewpoint_c":11.2,"dewpoint_f":52.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.6,"gust_kph":12.2,"uv":5.0},{"time_epoch":1692086400,"time":"2023-08-15 09:00","temp_c":18.9,"temp_f":66.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":261,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":61,"cloud":13,"feelslike_c":18.9,"feelslike_f":66.0,"windchill_c":18.9,"windchill_f":66.0,"heatindex_c":18.9,"heatindex_f":66.0,"dewpoint_c":11.2,"dewpoint_f":52.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":5.0},{"time_epoch":1692090000,"time":"2023-08-15 10:00","temp_c":20.4,"temp_f":68.7,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.7,"wind_kph":10.8,"wind_degree":260,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":55,"cloud":30,"feelslike_c":20.4,"feelslike_f":68.7,"windchill_c":20.4,"windchill_f":68.7,"heatindex_c":20.4,"heatindex_f":68.7,"dewpoint_c":11.1,"dewpoint_f":52.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":6.0},{"time_epoch":1692093600,"time":"2023-08-15 11:00","temp_c":21.7,"temp_f":71.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":262,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":7,"feelslike_c":21.7,"feelslike_f":71.1,"windchill_c":21.7,"windchill_f":71.1,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.9,"dewpoint_f":51.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":6.0},{"time_epoch":1692097200,"time":"2023-08-15 12:00","temp_c":22.9,"temp_f":73.2,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":261,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":46,"cloud":65,"feelslike_c":24.5,"feelslike_f":76.1,"windchill_c":22.9,"windchill_f":73.2,"heatindex_c":24.5,"heatindex_f":76.1,"dewpoint_c":10.6,"dewpoint_f":51.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":5.0},{"time_epoch":1692100800,"time":"2023-08-15 13:00","temp_c":23.7,"temp_f":74.7,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":263,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":43,"cloud":54,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":23.7,"windchill_f":74.7,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":10.3,"dewpoint_f":50.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":6.0},{"time_epoch":1692104400,"time":"2023-08-15 14:00","temp_c":23.6,"temp_f":74.5,"is_day":1,"condition":{"text":"Overcast","icon":"//cdn.weatherapi.com/weather/64x64/day/122.png","code":1009},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":271,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":43,"cloud":100,"feelslike_c":24.7,"feelslike_f":76.5,"windchill_c":23.6,"windchill_f":74.5,"heatindex_c":24.7,"heatindex_f":76.5,"dewpoint_c":10.2,"dewpoint_f":50.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.2,"gust_kph":14.8,"uv":5.0},{"time_epoch":1692108000,"time":"2023-08-15 15:00","temp_c":22.1,"temp_f":71.8,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":276,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.01,"precip_mm":0.0,"precip_in":0.0,"humidity":49,"cloud":70,"feelslike_c":24.4,"feelslike_f":75.9,"windchill_c":22.1,"windchill_f":71.8,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.8,"dewpoint_f":51.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":10.3,"gust_kph":16.6,"uv":5.0},{"time_epoch":1692111600,"time":"2023-08-15 16:00","temp_c":21.8,"temp_f":71.2,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":277,"wind_dir":"W","pressure_mb":1017.0,"pressure_in":30.02,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":45,"feelslike_c":21.8,"feelslike_f":71.2,"windchill_c":21.8,"windchill_f":71.2,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.9,"dewpoint_f":51.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.5,"gust_kph":13.7,"uv":6.0},{"time_epoch":1692115200,"time":"2023-08-15 17:00","temp_c":21.8,"temp_f":71.2,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.0,"wind_kph":9.7,"wind_degree":274,"wind_dir":"W","pressure_mb":1017.0,"pressure_in":30.02,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":44,"feelslike_c":21.8,"feelslike_f":71.2,"windchill_c":21.8,"windchill_f":71.2,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":11.0,"dewpoint_f":51.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.1,"gust_kph":13.0,"uv":6.0},{"time_epoch":1692118800,"time":"2023-08-15 18:00","temp_c":21.6,"temp_f":70.9,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":258,"wind_dir":"WSW","pressure_mb":1017.0,"pressure_in":30.03,"precip_mm":0.0,"precip_in":0.0,"humidity":53,"cloud":47,"feelslike_c":21.6,"feelslike_f":70.9,"windchill_c":21.6,"windchill_f":70.9,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":11.5,"dewpoint_f":52.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":6.0},{"time_epoch":1692122400,"time":"2023-08-15 19:00","temp_c":20.6,"temp_f":69.1,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1018.0,"pressure_in":30.05,"precip_mm":0.0,"precip_in":0.0,"humidity":58,"cloud":46,"feelslike_c":20.6,"feelslike_f":69.1,"windchill_c":20.6,"windchill_f":69.1,"heatindex_c":20.6,"heatindex_f":69.1,"dewpoint_c":12.0,"dewpoint_f":53.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":6.0},{"time_epoch":1692126000,"time":"2023-08-15 20:00","temp_c":19.5,"temp_f":67.1,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1018.0,"pressure_in":30.07,"precip_mm":0.0,"precip_in":0.0,"humidity":63,"cloud":51,"feelslike_c":19.5,"feelslike_f":67.1,"windchill_c":19.5,"windchill_f":67.1,"heatindex_c":19.5,"heatindex_f":67.1,"dewpoint_c":12.2,"dewpoint_f":54.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":5.0},{"time_epoch":1692129600,"time":"2023-08-15 21:00","temp_c":18.6,"temp_f":65.5,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":4.5,"wind_kph":7.2,"wind_degree":249,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.08,"precip_mm":0.0,"precip_in":0.0,"humidity":67,"cloud":29,"feelslike_c":18.6,"feelslike_f":65.5,"windchill_c":18.6,"windchill_f":65.5,"heatindex_c":18.6,"heatindex_f":65.5,"dewpoint_c":12.3,"dewpoint_f":54.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":1.0},{"time_epoch":1692133200,"time":"2023-08-15 22:00","temp_c":18.0,"temp_f":64.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":243,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.08,"precip_mm":0.0,"precip_in":0.0,"humidity":70,"cloud":18,"feelslike_c":18.0,"feelslike_f":64.4,"windchill_c":18.0,"windchill_f":64.4,"heatindex_c":18.0,"heatindex_f":64.4,"dewpoint_c":12.4,"dewpoint_f":54.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.3,"gust_kph":10.1,"uv":1.0},{"time_epoch":1692136800,"time":"2023-08-15 23:00","temp_c":17.5,"temp_f":63.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":242,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.09,"precip_mm":0.0,"precip_in":0.0,"humidity":72,"cloud":15,"feelslike_c":17.5,"feelslike_f":63.5,"windchill_c":17.5,"windchill_f":63.5,"heatindex_c":17.5,"heatindex_f":63.5,"dewpoint_c":12.4,"dewpoint_f":54.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.6,"gust_kph":9.0,"uv":1.0}]}]

Forecast forecastFromJson(String str) => Forecast.fromJson(json.decode(str));
String forecastToJson(Forecast data) => json.encode(data.toJson());
class Forecast {
  Forecast({
      this.forecastday,});

  Forecast.fromJson(dynamic json) {
    if (json['forecastday'] != null) {
      forecastday = [];
      json['forecastday'].forEach((v) {
        forecastday?.add(Forecastday.fromJson(v));
      });
    }
  }
  List<Forecastday>? forecastday;
Forecast copyWith({  List<Forecastday>? forecastday,
}) => Forecast(  forecastday: forecastday ?? this.forecastday,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (forecastday != null) {
      map['forecastday'] = forecastday?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// date : "2023-08-15"
/// date_epoch : 1692057600
/// day : {"maxtemp_c":23.7,"maxtemp_f":74.7,"mintemp_c":13.9,"mintemp_f":57.0,"avgtemp_c":18.7,"avgtemp_f":65.7,"maxwind_mph":8.1,"maxwind_kph":13.0,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":66.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"uv":5.0}
/// astro : {"sunrise":"05:46 AM","sunset":"08:23 PM","moonrise":"04:07 AM","moonset":"08:37 PM","moon_phase":"Waning Crescent","moon_illumination":"2","is_moon_up":0,"is_sun_up":0}
/// hour : [{"time_epoch":1692054000,"time":"2023-08-15 00:00","temp_c":15.8,"temp_f":60.4,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":4.0,"wind_kph":6.5,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":62,"feelslike_c":15.8,"feelslike_f":60.4,"windchill_c":15.8,"windchill_f":60.4,"heatindex_c":15.8,"heatindex_f":60.4,"dewpoint_c":13.7,"dewpoint_f":56.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.5,"gust_kph":10.4,"uv":1.0},{"time_epoch":1692057600,"time":"2023-08-15 01:00","temp_c":15.4,"temp_f":59.7,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":247,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":53,"feelslike_c":15.4,"feelslike_f":59.7,"windchill_c":15.4,"windchill_f":59.7,"heatindex_c":15.4,"heatindex_f":59.7,"dewpoint_c":13.3,"dewpoint_f":55.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.3,"gust_kph":10.1,"uv":1.0},{"time_epoch":1692061200,"time":"2023-08-15 02:00","temp_c":15.0,"temp_f":59.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":88,"cloud":23,"feelslike_c":15.1,"feelslike_f":59.2,"windchill_c":15.1,"windchill_f":59.2,"heatindex_c":15.1,"heatindex_f":59.2,"dewpoint_c":13.1,"dewpoint_f":55.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.9,"gust_kph":11.2,"uv":1.0},{"time_epoch":1692064800,"time":"2023-08-15 03:00","temp_c":15.0,"temp_f":59.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":90,"cloud":19,"feelslike_c":14.8,"feelslike_f":58.6,"windchill_c":14.8,"windchill_f":58.6,"heatindex_c":14.9,"heatindex_f":58.8,"dewpoint_c":13.2,"dewpoint_f":55.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":1.0},{"time_epoch":1692068400,"time":"2023-08-15 04:00","temp_c":14.5,"temp_f":58.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":259,"wind_dir":"W","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":88,"cloud":10,"feelslike_c":14.2,"feelslike_f":57.6,"windchill_c":14.2,"windchill_f":57.6,"heatindex_c":14.4,"heatindex_f":57.9,"dewpoint_c":12.5,"dewpoint_f":54.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.1,"gust_kph":13.0,"uv":1.0},{"time_epoch":1692072000,"time":"2023-08-15 05:00","temp_c":13.9,"temp_f":57.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":257,"wind_dir":"WSW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":87,"cloud":10,"feelslike_c":13.6,"feelslike_f":56.5,"windchill_c":13.6,"windchill_f":56.5,"heatindex_c":13.9,"heatindex_f":57.0,"dewpoint_c":11.8,"dewpoint_f":53.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":1.0},{"time_epoch":1692075600,"time":"2023-08-15 06:00","temp_c":14.3,"temp_f":57.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":83,"cloud":9,"feelslike_c":14.0,"feelslike_f":57.2,"windchill_c":14.0,"windchill_f":57.2,"heatindex_c":14.3,"heatindex_f":57.7,"dewpoint_c":11.6,"dewpoint_f":52.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.6,"gust_kph":12.2,"uv":4.0},{"time_epoch":1692079200,"time":"2023-08-15 07:00","temp_c":15.7,"temp_f":60.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":258,"wind_dir":"WSW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":75,"cloud":0,"feelslike_c":15.7,"feelslike_f":60.3,"windchill_c":15.7,"windchill_f":60.3,"heatindex_c":15.7,"heatindex_f":60.3,"dewpoint_c":11.3,"dewpoint_f":52.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":5.0},{"time_epoch":1692082800,"time":"2023-08-15 08:00","temp_c":17.3,"temp_f":63.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":260,"wind_dir":"W","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":67,"cloud":3,"feelslike_c":17.3,"feelslike_f":63.1,"windchill_c":17.3,"windchill_f":63.1,"heatindex_c":17.3,"heatindex_f":63.1,"dewpoint_c":11.2,"dewpoint_f":52.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.6,"gust_kph":12.2,"uv":5.0},{"time_epoch":1692086400,"time":"2023-08-15 09:00","temp_c":18.9,"temp_f":66.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":261,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":61,"cloud":13,"feelslike_c":18.9,"feelslike_f":66.0,"windchill_c":18.9,"windchill_f":66.0,"heatindex_c":18.9,"heatindex_f":66.0,"dewpoint_c":11.2,"dewpoint_f":52.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":5.0},{"time_epoch":1692090000,"time":"2023-08-15 10:00","temp_c":20.4,"temp_f":68.7,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.7,"wind_kph":10.8,"wind_degree":260,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":55,"cloud":30,"feelslike_c":20.4,"feelslike_f":68.7,"windchill_c":20.4,"windchill_f":68.7,"heatindex_c":20.4,"heatindex_f":68.7,"dewpoint_c":11.1,"dewpoint_f":52.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":6.0},{"time_epoch":1692093600,"time":"2023-08-15 11:00","temp_c":21.7,"temp_f":71.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":262,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":7,"feelslike_c":21.7,"feelslike_f":71.1,"windchill_c":21.7,"windchill_f":71.1,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.9,"dewpoint_f":51.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":6.0},{"time_epoch":1692097200,"time":"2023-08-15 12:00","temp_c":22.9,"temp_f":73.2,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":261,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":46,"cloud":65,"feelslike_c":24.5,"feelslike_f":76.1,"windchill_c":22.9,"windchill_f":73.2,"heatindex_c":24.5,"heatindex_f":76.1,"dewpoint_c":10.6,"dewpoint_f":51.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":5.0},{"time_epoch":1692100800,"time":"2023-08-15 13:00","temp_c":23.7,"temp_f":74.7,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":263,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":43,"cloud":54,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":23.7,"windchill_f":74.7,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":10.3,"dewpoint_f":50.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":6.0},{"time_epoch":1692104400,"time":"2023-08-15 14:00","temp_c":23.6,"temp_f":74.5,"is_day":1,"condition":{"text":"Overcast","icon":"//cdn.weatherapi.com/weather/64x64/day/122.png","code":1009},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":271,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":43,"cloud":100,"feelslike_c":24.7,"feelslike_f":76.5,"windchill_c":23.6,"windchill_f":74.5,"heatindex_c":24.7,"heatindex_f":76.5,"dewpoint_c":10.2,"dewpoint_f":50.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.2,"gust_kph":14.8,"uv":5.0},{"time_epoch":1692108000,"time":"2023-08-15 15:00","temp_c":22.1,"temp_f":71.8,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":276,"wind_dir":"W","pressure_mb":1016.0,"pressure_in":30.01,"precip_mm":0.0,"precip_in":0.0,"humidity":49,"cloud":70,"feelslike_c":24.4,"feelslike_f":75.9,"windchill_c":22.1,"windchill_f":71.8,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.8,"dewpoint_f":51.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":10.3,"gust_kph":16.6,"uv":5.0},{"time_epoch":1692111600,"time":"2023-08-15 16:00","temp_c":21.8,"temp_f":71.2,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":277,"wind_dir":"W","pressure_mb":1017.0,"pressure_in":30.02,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":45,"feelslike_c":21.8,"feelslike_f":71.2,"windchill_c":21.8,"windchill_f":71.2,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":10.9,"dewpoint_f":51.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.5,"gust_kph":13.7,"uv":6.0},{"time_epoch":1692115200,"time":"2023-08-15 17:00","temp_c":21.8,"temp_f":71.2,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":6.0,"wind_kph":9.7,"wind_degree":274,"wind_dir":"W","pressure_mb":1017.0,"pressure_in":30.02,"precip_mm":0.0,"precip_in":0.0,"humidity":50,"cloud":44,"feelslike_c":21.8,"feelslike_f":71.2,"windchill_c":21.8,"windchill_f":71.2,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":11.0,"dewpoint_f":51.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.1,"gust_kph":13.0,"uv":6.0},{"time_epoch":1692118800,"time":"2023-08-15 18:00","temp_c":21.6,"temp_f":70.9,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":258,"wind_dir":"WSW","pressure_mb":1017.0,"pressure_in":30.03,"precip_mm":0.0,"precip_in":0.0,"humidity":53,"cloud":47,"feelslike_c":21.6,"feelslike_f":70.9,"windchill_c":21.6,"windchill_f":70.9,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":11.5,"dewpoint_f":52.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.4,"gust_kph":11.9,"uv":6.0},{"time_epoch":1692122400,"time":"2023-08-15 19:00","temp_c":20.6,"temp_f":69.1,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":250,"wind_dir":"WSW","pressure_mb":1018.0,"pressure_in":30.05,"precip_mm":0.0,"precip_in":0.0,"humidity":58,"cloud":46,"feelslike_c":20.6,"feelslike_f":69.1,"windchill_c":20.6,"windchill_f":69.1,"heatindex_c":20.6,"heatindex_f":69.1,"dewpoint_c":12.0,"dewpoint_f":53.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":6.0},{"time_epoch":1692126000,"time":"2023-08-15 20:00","temp_c":19.5,"temp_f":67.1,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":246,"wind_dir":"WSW","pressure_mb":1018.0,"pressure_in":30.07,"precip_mm":0.0,"precip_in":0.0,"humidity":63,"cloud":51,"feelslike_c":19.5,"feelslike_f":67.1,"windchill_c":19.5,"windchill_f":67.1,"heatindex_c":19.5,"heatindex_f":67.1,"dewpoint_c":12.2,"dewpoint_f":54.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.6,"uv":5.0},{"time_epoch":1692129600,"time":"2023-08-15 21:00","temp_c":18.6,"temp_f":65.5,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":4.5,"wind_kph":7.2,"wind_degree":249,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.08,"precip_mm":0.0,"precip_in":0.0,"humidity":67,"cloud":29,"feelslike_c":18.6,"feelslike_f":65.5,"windchill_c":18.6,"windchill_f":65.5,"heatindex_c":18.6,"heatindex_f":65.5,"dewpoint_c":12.3,"dewpoint_f":54.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.5,"uv":1.0},{"time_epoch":1692133200,"time":"2023-08-15 22:00","temp_c":18.0,"temp_f":64.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":243,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.08,"precip_mm":0.0,"precip_in":0.0,"humidity":70,"cloud":18,"feelslike_c":18.0,"feelslike_f":64.4,"windchill_c":18.0,"windchill_f":64.4,"heatindex_c":18.0,"heatindex_f":64.4,"dewpoint_c":12.4,"dewpoint_f":54.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.3,"gust_kph":10.1,"uv":1.0},{"time_epoch":1692136800,"time":"2023-08-15 23:00","temp_c":17.5,"temp_f":63.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":242,"wind_dir":"WSW","pressure_mb":1019.0,"pressure_in":30.09,"precip_mm":0.0,"precip_in":0.0,"humidity":72,"cloud":15,"feelslike_c":17.5,"feelslike_f":63.5,"windchill_c":17.5,"windchill_f":63.5,"heatindex_c":17.5,"heatindex_f":63.5,"dewpoint_c":12.4,"dewpoint_f":54.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.6,"gust_kph":9.0,"uv":1.0}]

Forecastday forecastdayFromJson(String str) => Forecastday.fromJson(json.decode(str));
String forecastdayToJson(Forecastday data) => json.encode(data.toJson());
class Forecastday {
  Forecastday({
      this.date, 
      this.dateEpoch, 
      this.day, 
      this.astro, 
      this.hour,});

  Forecastday.fromJson(dynamic json) {
    date = json['date'];
    dateEpoch = json['date_epoch'];
    day = json['day'] != null ? Day.fromJson(json['day']) : null;
    astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      hour = [];
      json['hour'].forEach((v) {
        hour?.add(Hour.fromJson(v));
      });
    }
  }
  String? date;
  num? dateEpoch;
  Day? day;
  Astro? astro;
  List<Hour>? hour;
Forecastday copyWith({  String? date,
  num? dateEpoch,
  Day? day,
  Astro? astro,
  List<Hour>? hour,
}) => Forecastday(  date: date ?? this.date,
  dateEpoch: dateEpoch ?? this.dateEpoch,
  day: day ?? this.day,
  astro: astro ?? this.astro,
  hour: hour ?? this.hour,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['date_epoch'] = dateEpoch;
    if (day != null) {
      map['day'] = day?.toJson();
    }
    if (astro != null) {
      map['astro'] = astro?.toJson();
    }
    if (hour != null) {
      map['hour'] = hour?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// time_epoch : 1692054000
/// time : "2023-08-15 00:00"
/// temp_c : 15.8
/// temp_f : 60.4
/// is_day : 0
/// condition : {"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003}
/// wind_mph : 4.0
/// wind_kph : 6.5
/// wind_degree : 246
/// wind_dir : "WSW"
/// pressure_mb : 1012.0
/// pressure_in : 29.9
/// precip_mm : 0.0
/// precip_in : 0.0
/// humidity : 87
/// cloud : 62
/// feelslike_c : 15.8
/// feelslike_f : 60.4
/// windchill_c : 15.8
/// windchill_f : 60.4
/// heatindex_c : 15.8
/// heatindex_f : 60.4
/// dewpoint_c : 13.7
/// dewpoint_f : 56.7
/// will_it_rain : 0
/// chance_of_rain : 0
/// will_it_snow : 0
/// chance_of_snow : 0
/// vis_km : 10.0
/// vis_miles : 6.0
/// gust_mph : 6.5
/// gust_kph : 10.4
/// uv : 1.0

Hour hourFromJson(String str) => Hour.fromJson(json.decode(str));
String hourToJson(Hour data) => json.encode(data.toJson());
class Hour {
  Hour({
      this.timeEpoch, 
      this.time, 
      this.tempC, 
      this.tempF, 
      this.isDay, 
      this.condition, 
      this.windMph, 
      this.windKph, 
      this.windDegree, 
      this.windDir, 
      this.pressureMb, 
      this.pressureIn, 
      this.precipMm, 
      this.precipIn, 
      this.humidity, 
      this.cloud, 
      this.feelslikeC, 
      this.feelslikeF, 
      this.windchillC, 
      this.windchillF, 
      this.heatindexC, 
      this.heatindexF, 
      this.dewpointC, 
      this.dewpointF, 
      this.willItRain, 
      this.chanceOfRain, 
      this.willItSnow, 
      this.chanceOfSnow, 
      this.visKm, 
      this.visMiles, 
      this.gustMph, 
      this.gustKph, 
      this.uv,});

  Hour.fromJson(dynamic json) {
    timeEpoch = json['time_epoch'];
    time = json['time'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    windchillC = json['windchill_c'];
    windchillF = json['windchill_f'];
    heatindexC = json['heatindex_c'];
    heatindexF = json['heatindex_f'];
    dewpointC = json['dewpoint_c'];
    dewpointF = json['dewpoint_f'];
    willItRain = json['will_it_rain'];
    chanceOfRain = json['chance_of_rain'];
    willItSnow = json['will_it_snow'];
    chanceOfSnow = json['chance_of_snow'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
    uv = json['uv'];
  }
  num? timeEpoch;
  String? time;
  num? tempC;
  num? tempF;
  num? isDay;
  Condition? condition;
  num? windMph;
  num? windKph;
  num? windDegree;
  String? windDir;
  num? pressureMb;
  num? pressureIn;
  num? precipMm;
  num? precipIn;
  num? humidity;
  num? cloud;
  num? feelslikeC;
  num? feelslikeF;
  num? windchillC;
  num? windchillF;
  num? heatindexC;
  num? heatindexF;
  num? dewpointC;
  num? dewpointF;
  num? willItRain;
  num? chanceOfRain;
  num? willItSnow;
  num? chanceOfSnow;
  num? visKm;
  num? visMiles;
  num? gustMph;
  num? gustKph;
  num? uv;
Hour copyWith({  num? timeEpoch,
  String? time,
  num? tempC,
  num? tempF,
  num? isDay,
  Condition? condition,
  num? windMph,
  num? windKph,
  num? windDegree,
  String? windDir,
  num? pressureMb,
  num? pressureIn,
  num? precipMm,
  num? precipIn,
  num? humidity,
  num? cloud,
  num? feelslikeC,
  num? feelslikeF,
  num? windchillC,
  num? windchillF,
  num? heatindexC,
  num? heatindexF,
  num? dewpointC,
  num? dewpointF,
  num? willItRain,
  num? chanceOfRain,
  num? willItSnow,
  num? chanceOfSnow,
  num? visKm,
  num? visMiles,
  num? gustMph,
  num? gustKph,
  num? uv,
}) => Hour(  timeEpoch: timeEpoch ?? this.timeEpoch,
  time: time ?? this.time,
  tempC: tempC ?? this.tempC,
  tempF: tempF ?? this.tempF,
  isDay: isDay ?? this.isDay,
  condition: condition ?? this.condition,
  windMph: windMph ?? this.windMph,
  windKph: windKph ?? this.windKph,
  windDegree: windDegree ?? this.windDegree,
  windDir: windDir ?? this.windDir,
  pressureMb: pressureMb ?? this.pressureMb,
  pressureIn: pressureIn ?? this.pressureIn,
  precipMm: precipMm ?? this.precipMm,
  precipIn: precipIn ?? this.precipIn,
  humidity: humidity ?? this.humidity,
  cloud: cloud ?? this.cloud,
  feelslikeC: feelslikeC ?? this.feelslikeC,
  feelslikeF: feelslikeF ?? this.feelslikeF,
  windchillC: windchillC ?? this.windchillC,
  windchillF: windchillF ?? this.windchillF,
  heatindexC: heatindexC ?? this.heatindexC,
  heatindexF: heatindexF ?? this.heatindexF,
  dewpointC: dewpointC ?? this.dewpointC,
  dewpointF: dewpointF ?? this.dewpointF,
  willItRain: willItRain ?? this.willItRain,
  chanceOfRain: chanceOfRain ?? this.chanceOfRain,
  willItSnow: willItSnow ?? this.willItSnow,
  chanceOfSnow: chanceOfSnow ?? this.chanceOfSnow,
  visKm: visKm ?? this.visKm,
  visMiles: visMiles ?? this.visMiles,
  gustMph: gustMph ?? this.gustMph,
  gustKph: gustKph ?? this.gustKph,
  uv: uv ?? this.uv,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time_epoch'] = timeEpoch;
    map['time'] = time;
    map['temp_c'] = tempC;
    map['temp_f'] = tempF;
    map['is_day'] = isDay;
    if (condition != null) {
      map['condition'] = condition?.toJson();
    }
    map['wind_mph'] = windMph;
    map['wind_kph'] = windKph;
    map['wind_degree'] = windDegree;
    map['wind_dir'] = windDir;
    map['pressure_mb'] = pressureMb;
    map['pressure_in'] = pressureIn;
    map['precip_mm'] = precipMm;
    map['precip_in'] = precipIn;
    map['humidity'] = humidity;
    map['cloud'] = cloud;
    map['feelslike_c'] = feelslikeC;
    map['feelslike_f'] = feelslikeF;
    map['windchill_c'] = windchillC;
    map['windchill_f'] = windchillF;
    map['heatindex_c'] = heatindexC;
    map['heatindex_f'] = heatindexF;
    map['dewpoint_c'] = dewpointC;
    map['dewpoint_f'] = dewpointF;
    map['will_it_rain'] = willItRain;
    map['chance_of_rain'] = chanceOfRain;
    map['will_it_snow'] = willItSnow;
    map['chance_of_snow'] = chanceOfSnow;
    map['vis_km'] = visKm;
    map['vis_miles'] = visMiles;
    map['gust_mph'] = gustMph;
    map['gust_kph'] = gustKph;
    map['uv'] = uv;
    return map;
  }

}

/// text : "Partly cloudy"
/// icon : "//cdn.weatherapi.com/weather/64x64/night/116.png"
/// code : 1003

Condition conditionFromJson(String str) => Condition.fromJson(json.decode(str));
String conditionToJson(Condition data) => json.encode(data.toJson());
class Condition {
  Condition({
      this.text, 
      this.icon, 
      this.code,});

  Condition.fromJson(dynamic json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }
  String? text;
  String? icon;
  num? code;
Condition copyWith({  String? text,
  String? icon,
  num? code,
}) => Condition(  text: text ?? this.text,
  icon: icon ?? this.icon,
  code: code ?? this.code,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['icon'] = icon;
    map['code'] = code;
    return map;
  }

}

/// sunrise : "05:46 AM"
/// sunset : "08:23 PM"
/// moonrise : "04:07 AM"
/// moonset : "08:37 PM"
/// moon_phase : "Waning Crescent"
/// moon_illumination : "2"
/// is_moon_up : 0
/// is_sun_up : 0

Astro astroFromJson(String str) => Astro.fromJson(json.decode(str));
String astroToJson(Astro data) => json.encode(data.toJson());
class Astro {
  Astro({
      this.sunrise, 
      this.sunset, 
      this.moonrise, 
      this.moonset, 
      this.moonPhase, 
      this.moonIllumination, 
      this.isMoonUp, 
      this.isSunUp,});

  Astro.fromJson(dynamic json) {
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    moonPhase = json['moon_phase'];
    moonIllumination = json['moon_illumination'];
    isMoonUp = json['is_moon_up'];
    isSunUp = json['is_sun_up'];
  }
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  String? moonIllumination;
  num? isMoonUp;
  num? isSunUp;
Astro copyWith({  String? sunrise,
  String? sunset,
  String? moonrise,
  String? moonset,
  String? moonPhase,
  String? moonIllumination,
  num? isMoonUp,
  num? isSunUp,
}) => Astro(  sunrise: sunrise ?? this.sunrise,
  sunset: sunset ?? this.sunset,
  moonrise: moonrise ?? this.moonrise,
  moonset: moonset ?? this.moonset,
  moonPhase: moonPhase ?? this.moonPhase,
  moonIllumination: moonIllumination ?? this.moonIllumination,
  isMoonUp: isMoonUp ?? this.isMoonUp,
  isSunUp: isSunUp ?? this.isSunUp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    map['moonrise'] = moonrise;
    map['moonset'] = moonset;
    map['moon_phase'] = moonPhase;
    map['moon_illumination'] = moonIllumination;
    map['is_moon_up'] = isMoonUp;
    map['is_sun_up'] = isSunUp;
    return map;
  }

}

/// maxtemp_c : 23.7
/// maxtemp_f : 74.7
/// mintemp_c : 13.9
/// mintemp_f : 57.0
/// avgtemp_c : 18.7
/// avgtemp_f : 65.7
/// maxwind_mph : 8.1
/// maxwind_kph : 13.0
/// totalprecip_mm : 0.0
/// totalprecip_in : 0.0
/// totalsnow_cm : 0.0
/// avgvis_km : 10.0
/// avgvis_miles : 6.0
/// avghumidity : 66.0
/// daily_will_it_rain : 0
/// daily_chance_of_rain : 0
/// daily_will_it_snow : 0
/// daily_chance_of_snow : 0
/// condition : {"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003}
/// uv : 5.0

Day dayFromJson(String str) => Day.fromJson(json.decode(str));
String dayToJson(Day data) => json.encode(data.toJson());
class Day {
  Day({
      this.maxtempC, 
      this.maxtempF, 
      this.mintempC, 
      this.mintempF, 
      this.avgtempC, 
      this.avgtempF, 
      this.maxwindMph, 
      this.maxwindKph, 
      this.totalprecipMm, 
      this.totalprecipIn, 
      this.totalsnowCm, 
      this.avgvisKm, 
      this.avgvisMiles, 
      this.avghumidity, 
      this.dailyWillItRain, 
      this.dailyChanceOfRain, 
      this.dailyWillItSnow, 
      this.dailyChanceOfSnow, 
      this.condition, 
      this.uv,});

  Day.fromJson(dynamic json) {
    maxtempC = json['maxtemp_c'];
    maxtempF = json['maxtemp_f'];
    mintempC = json['mintemp_c'];
    mintempF = json['mintemp_f'];
    avgtempC = json['avgtemp_c'];
    avgtempF = json['avgtemp_f'];
    maxwindMph = json['maxwind_mph'];
    maxwindKph = json['maxwind_kph'];
    totalprecipMm = json['totalprecip_mm'];
    totalprecipIn = json['totalprecip_in'];
    totalsnowCm = json['totalsnow_cm'];
    avgvisKm = json['avgvis_km'];
    avgvisMiles = json['avgvis_miles'];
    avghumidity = json['avghumidity'];
    dailyWillItRain = json['daily_will_it_rain'];
    dailyChanceOfRain = json['daily_chance_of_rain'];
    dailyWillItSnow = json['daily_will_it_snow'];
    dailyChanceOfSnow = json['daily_chance_of_snow'];
    condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    uv = json['uv'];
  }
  num? maxtempC;
  num? maxtempF;
  num? mintempC;
  num? mintempF;
  num? avgtempC;
  num? avgtempF;
  num? maxwindMph;
  num? maxwindKph;
  num? totalprecipMm;
  num? totalprecipIn;
  num? totalsnowCm;
  num? avgvisKm;
  num? avgvisMiles;
  num? avghumidity;
  num? dailyWillItRain;
  num? dailyChanceOfRain;
  num? dailyWillItSnow;
  num? dailyChanceOfSnow;
  Condition? condition;
  num? uv;
Day copyWith({  num? maxtempC,
  num? maxtempF,
  num? mintempC,
  num? mintempF,
  num? avgtempC,
  num? avgtempF,
  num? maxwindMph,
  num? maxwindKph,
  num? totalprecipMm,
  num? totalprecipIn,
  num? totalsnowCm,
  num? avgvisKm,
  num? avgvisMiles,
  num? avghumidity,
  num? dailyWillItRain,
  num? dailyChanceOfRain,
  num? dailyWillItSnow,
  num? dailyChanceOfSnow,
  Condition? condition,
  num? uv,
}) => Day(  maxtempC: maxtempC ?? this.maxtempC,
  maxtempF: maxtempF ?? this.maxtempF,
  mintempC: mintempC ?? this.mintempC,
  mintempF: mintempF ?? this.mintempF,
  avgtempC: avgtempC ?? this.avgtempC,
  avgtempF: avgtempF ?? this.avgtempF,
  maxwindMph: maxwindMph ?? this.maxwindMph,
  maxwindKph: maxwindKph ?? this.maxwindKph,
  totalprecipMm: totalprecipMm ?? this.totalprecipMm,
  totalprecipIn: totalprecipIn ?? this.totalprecipIn,
  totalsnowCm: totalsnowCm ?? this.totalsnowCm,
  avgvisKm: avgvisKm ?? this.avgvisKm,
  avgvisMiles: avgvisMiles ?? this.avgvisMiles,
  avghumidity: avghumidity ?? this.avghumidity,
  dailyWillItRain: dailyWillItRain ?? this.dailyWillItRain,
  dailyChanceOfRain: dailyChanceOfRain ?? this.dailyChanceOfRain,
  dailyWillItSnow: dailyWillItSnow ?? this.dailyWillItSnow,
  dailyChanceOfSnow: dailyChanceOfSnow ?? this.dailyChanceOfSnow,
  condition: condition ?? this.condition,
  uv: uv ?? this.uv,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maxtemp_c'] = maxtempC;
    map['maxtemp_f'] = maxtempF;
    map['mintemp_c'] = mintempC;
    map['mintemp_f'] = mintempF;
    map['avgtemp_c'] = avgtempC;
    map['avgtemp_f'] = avgtempF;
    map['maxwind_mph'] = maxwindMph;
    map['maxwind_kph'] = maxwindKph;
    map['totalprecip_mm'] = totalprecipMm;
    map['totalprecip_in'] = totalprecipIn;
    map['totalsnow_cm'] = totalsnowCm;
    map['avgvis_km'] = avgvisKm;
    map['avgvis_miles'] = avgvisMiles;
    map['avghumidity'] = avghumidity;
    map['daily_will_it_rain'] = dailyWillItRain;
    map['daily_chance_of_rain'] = dailyChanceOfRain;
    map['daily_will_it_snow'] = dailyWillItSnow;
    map['daily_chance_of_snow'] = dailyChanceOfSnow;
    if (condition != null) {
      map['condition'] = condition?.toJson();
    }
    map['uv'] = uv;
    return map;
  }

}

/// text : "Partly cloudy"
/// icon : "//cdn.weatherapi.com/weather/64x64/day/116.png"
/// code : 1003



/// last_updated_epoch : 1692118800
/// last_updated : "2023-08-15 18:00"
/// temp_c : 23.0
/// temp_f : 73.4
/// is_day : 1
/// condition : {"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003}
/// wind_mph : 8.1
/// wind_kph : 13.0
/// wind_degree : 300
/// wind_dir : "WNW"
/// pressure_mb : 1017.0
/// pressure_in : 30.03
/// precip_mm : 0.0
/// precip_in : 0.0
/// humidity : 50
/// cloud : 75
/// feelslike_c : 24.8
/// feelslike_f : 76.6
/// vis_km : 10.0
/// vis_miles : 6.0
/// uv : 6.0
/// gust_mph : 7.4
/// gust_kph : 11.9

Current currentFromJson(String str) => Current.fromJson(json.decode(str));
String currentToJson(Current data) => json.encode(data.toJson());
class Current {
  Current({
      this.lastUpdatedEpoch, 
      this.lastUpdated, 
      this.tempC, 
      this.tempF, 
      this.isDay, 
      this.condition, 
      this.windMph, 
      this.windKph, 
      this.windDegree, 
      this.windDir, 
      this.pressureMb, 
      this.pressureIn, 
      this.precipMm, 
      this.precipIn, 
      this.humidity, 
      this.cloud, 
      this.feelslikeC, 
      this.feelslikeF, 
      this.visKm, 
      this.visMiles, 
      this.uv, 
      this.gustMph, 
      this.gustKph,});

  Current.fromJson(dynamic json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    uv = json['uv'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
  }
  num? lastUpdatedEpoch;
  String? lastUpdated;
  num? tempC;
  num? tempF;
  num? isDay;
  Condition? condition;
  num? windMph;
  num? windKph;
  num? windDegree;
  String? windDir;
  num? pressureMb;
  num? pressureIn;
  num? precipMm;
  num? precipIn;
  num? humidity;
  num? cloud;
  num? feelslikeC;
  num? feelslikeF;
  num? visKm;
  num? visMiles;
  num? uv;
  num? gustMph;
  num? gustKph;
Current copyWith({  num? lastUpdatedEpoch,
  String? lastUpdated,
  num? tempC,
  num? tempF,
  num? isDay,
  Condition? condition,
  num? windMph,
  num? windKph,
  num? windDegree,
  String? windDir,
  num? pressureMb,
  num? pressureIn,
  num? precipMm,
  num? precipIn,
  num? humidity,
  num? cloud,
  num? feelslikeC,
  num? feelslikeF,
  num? visKm,
  num? visMiles,
  num? uv,
  num? gustMph,
  num? gustKph,
}) => Current(  lastUpdatedEpoch: lastUpdatedEpoch ?? this.lastUpdatedEpoch,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  tempC: tempC ?? this.tempC,
  tempF: tempF ?? this.tempF,
  isDay: isDay ?? this.isDay,
  condition: condition ?? this.condition,
  windMph: windMph ?? this.windMph,
  windKph: windKph ?? this.windKph,
  windDegree: windDegree ?? this.windDegree,
  windDir: windDir ?? this.windDir,
  pressureMb: pressureMb ?? this.pressureMb,
  pressureIn: pressureIn ?? this.pressureIn,
  precipMm: precipMm ?? this.precipMm,
  precipIn: precipIn ?? this.precipIn,
  humidity: humidity ?? this.humidity,
  cloud: cloud ?? this.cloud,
  feelslikeC: feelslikeC ?? this.feelslikeC,
  feelslikeF: feelslikeF ?? this.feelslikeF,
  visKm: visKm ?? this.visKm,
  visMiles: visMiles ?? this.visMiles,
  uv: uv ?? this.uv,
  gustMph: gustMph ?? this.gustMph,
  gustKph: gustKph ?? this.gustKph,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = lastUpdatedEpoch;
    map['last_updated'] = lastUpdated;
    map['temp_c'] = tempC;
    map['temp_f'] = tempF;
    map['is_day'] = isDay;
    if (condition != null) {
      map['condition'] = condition?.toJson();
    }
    map['wind_mph'] = windMph;
    map['wind_kph'] = windKph;
    map['wind_degree'] = windDegree;
    map['wind_dir'] = windDir;
    map['pressure_mb'] = pressureMb;
    map['pressure_in'] = pressureIn;
    map['precip_mm'] = precipMm;
    map['precip_in'] = precipIn;
    map['humidity'] = humidity;
    map['cloud'] = cloud;
    map['feelslike_c'] = feelslikeC;
    map['feelslike_f'] = feelslikeF;
    map['vis_km'] = visKm;
    map['vis_miles'] = visMiles;
    map['uv'] = uv;
    map['gust_mph'] = gustMph;
    map['gust_kph'] = gustKph;
    return map;
  }

}

/// text : "Partly cloudy"
/// icon : "//cdn.weatherapi.com/weather/64x64/day/116.png"
/// code : 1003



/// name : "London"
/// region : "City of London, Greater London"
/// country : "United Kingdom"
/// lat : 51.52
/// lon : -0.11
/// tz_id : "Europe/London"
/// localtime_epoch : 1692119753
/// localtime : "2023-08-15 18:15"

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());
class Location {
  Location({
      this.name, 
      this.region, 
      this.country, 
      this.lat, 
      this.lon, 
      this.tzId, 
      this.localtimeEpoch, 
      this.localtime,});

  Location.fromJson(dynamic json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    lat = json['lat'];
    lon = json['lon'];
    tzId = json['tz_id'];
    localtimeEpoch = json['localtime_epoch'];
    localtime = json['localtime'];
  }
  String? name;
  String? region;
  String? country;
  num? lat;
  num? lon;
  String? tzId;
  num? localtimeEpoch;
  String? localtime;
Location copyWith({  String? name,
  String? region,
  String? country,
  num? lat,
  num? lon,
  String? tzId,
  num? localtimeEpoch,
  String? localtime,
}) => Location(  name: name ?? this.name,
  region: region ?? this.region,
  country: country ?? this.country,
  lat: lat ?? this.lat,
  lon: lon ?? this.lon,
  tzId: tzId ?? this.tzId,
  localtimeEpoch: localtimeEpoch ?? this.localtimeEpoch,
  localtime: localtime ?? this.localtime,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['region'] = region;
    map['country'] = country;
    map['lat'] = lat;
    map['lon'] = lon;
    map['tz_id'] = tzId;
    map['localtime_epoch'] = localtimeEpoch;
    map['localtime'] = localtime;
    return map;
  }

}