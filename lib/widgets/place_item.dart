import 'package:favorite_places_app/model/place.dart';
import 'package:favorite_places_app/screens/places_detail_screen.dart';
import 'package:flutter/material.dart';

class PlaceItem extends StatelessWidget {
  const PlaceItem({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: InkWell(
            onTap:
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PlacesDetailScreen(place: place),
                  ),
                ),
            child: Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: FileImage(place.image),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    place.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
