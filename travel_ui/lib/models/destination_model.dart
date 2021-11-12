import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
   this.imageUrl,
   this.city,
   this.country,
   this.description,
   this.activities,
});
}

List<Activity> activities = [
  Activity(
    imageUrl: 'images/veniceItaly.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),Activity(
    imageUrl: 'images/greece.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),Activity(
    imageUrl: 'images/veniceItaly.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'images/venice.jpg',
    city: 'Venice',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),Destination(
    imageUrl: 'images/greece.jpg',
    city: 'Santorini',
    country: 'Greece',
    description: 'Visit Greece for an amazing and unforgettable adventure.',
    activities: activities,
  ),Destination(
    imageUrl: 'images/bali.jpg',
    city: 'Bali',
    country: 'Indonesia',
    description: 'Visit Indonesia for an amazing and unforgettable adventure.',
    activities: activities,
  ),Destination(
    imageUrl: 'images/Maldives.jpg',
    city: 'Kunfunadhoo',
    country: 'Maldives',
    description: 'Visit Maldives for an amazing and unforgettable adventure.',
    activities: activities,
  ),Destination(
    imageUrl: 'images/seychelles.jpg',
    city: 'Mahe Island',
    country: 'Seychelles',
    description: 'Visit Seychelles for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];