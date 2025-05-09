import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Cuaca',
      home: WeatherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WeatherScreen extends StatelessWidget {
  final String city = "Cendekia";
  final String weather = "Cloudy";
  final double temp = 27;
  final double minTemp = 25;
  final double maxTemp = 28;

  const WeatherScreen({super.key});

  String getCurrentDate() {
    final now = DateTime.now();
    final formatter = DateFormat('EEEE, MMMM d, y');
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cloudy.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'APLIKASI CUACA',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  city,
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  getCurrentDate(),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(height: 32),
                Text(
                  '${temp.toStringAsFixed(0)}°C',
                  style: TextStyle(fontSize: 80, color: Colors.black),
                ),
                Divider(color: Colors.black),
                SizedBox(height: 16),
                Text(
                  weather,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  '${minTemp.toStringAsFixed(0)}°C / ${maxTemp.toStringAsFixed(0)}°C',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Aplikasi Cuaca Rio",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
