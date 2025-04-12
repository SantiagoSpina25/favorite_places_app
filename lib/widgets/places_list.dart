import 'package:favorite_places_app/model/place.dart';
import 'package:favorite_places_app/widgets/place_item.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.placesList});

  final List<Place> placesList;

  @override
  Widget build(BuildContext context) {

    if (placesList.isEmpty) {
      return Center(
        child: Text(
          "No places added yet",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: placesList.length,
      itemBuilder: (context, index) => PlaceItem(place: placesList[index]),
    );
  }
}
