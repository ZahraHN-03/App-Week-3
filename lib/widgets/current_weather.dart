import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cards.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [currentTemperature(), currentState(), dailyWeather()]);
  }

  Widget currentTemperature() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/example/images/icons8-snow-30.png",
          scale: 0.5,
        ),
        Container(
          //margin: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.topRight,
          child: Text(
            "-16°C",
            style: GoogleFonts.exo2(
                color: Colors.black87,
                fontSize: 40,
                fontWeight: FontWeight.w500,
                height: 1),
          ),
        ),
      ],
    );
  }

  Widget currentState() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Winter Is Coming",
            style: GoogleFonts.exo2(
              color: Colors.grey[800],
              fontSize: 20,
              //fontWeight: FontWeight.w500,
              height: 3,
            ),
          ),
        ),
      ],
    );
  }

  Widget dailyWeather() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CurrentWeatherIconCard(
                image: Image.asset(
                    "assets/example/images/icons8-wind-48 (1).png")),
            CurrentWeatherIconCard(
                image:
                    Image.asset("assets/example/images/icons8-clouds-64.png")),
            CurrentWeatherIconCard(
                image: Image.asset(
                    "assets/example/images/icons8-hygrometer-64.png")),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CurrentWeathrtDataCard(text: "3.06km/h"),
            CurrentWeathrtDataCard(text: "82%"),
            CurrentWeathrtDataCard(text: "35%")
          ],
        ),
      ],
    );
  }
}
