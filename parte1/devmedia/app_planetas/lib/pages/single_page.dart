import 'package:flutter/material.dart';

import 'package:app_planetas/models/planet.dart';
import 'package:app_planetas/services/planet_service.dart';
import 'package:app_planetas/widgets/planet_list_tile.dart';

class SinglePage extends StatelessWidget {
  final Planet planet;
  final PlanetService planetService = PlanetService();

  SinglePage({Key key, this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.network(planet.urlImage),
          ),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(12.0),
              subtitle: Text(planet.desc),
            ),
          ),
        ]..addAll(planetService
            .planetsOrdereByDistanceOfPlanet(planet)
            .map((orderedPlanet) {
          return PlanetListTile(
            planet: orderedPlanet,
            subtitle: Text(
                "${planetService.distanceFromPlanets(planet, orderedPlanet).toStringAsPrecision(2)} AU do ${planet.name}"),
          );
        })),
      ),
    );
  }
}
