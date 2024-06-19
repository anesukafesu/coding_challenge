import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(28, 27, 31, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'COVID-19 Tracker',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              StatCard(
                title: 'Total Cases',
                value: '9,231,249',
                color: Color.fromRGBO(249, 239, 156, 1),
                asset: 'assets/images/abacus.svg',
              ),
              StatCard(
                title: 'Active Cases',
                value: '123,214',
                color: Color.fromRGBO(218, 152, 52, 1),
                asset: 'assets/images/sick-person.svg',
              ),
              StatCard(
                title: 'Deaths',
                value: '51,245',
                color: Color.fromRGBO(209, 45, 30, 1),
                asset: 'assets/images/skull.svg',
              ),
              StatCard(
                title: 'Recovered',
                value: '7,452,340',
                color: Color.fromRGBO(125, 167, 50, 1),
                asset: 'assets/images/healthy-person.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final String asset;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(37, 35, 41, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SvgPicture.asset(
                  asset,
                  width: 30,
                ),
              ],
            ),
            Text(
              value,
              style: TextStyle(
                color: color,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
