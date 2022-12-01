// ignore_for_file: public_member_api_docs, sort_constructors_first
class PopularDestinationModel {
  String name;
  String country;
  String image;
  PopularDestinationModel({
    required this.name,
    required this.country,
    required this.image,
  });
}

List<PopularDestinationModel> populars = popularsData
    .map((item) => PopularDestinationModel(
        name: item['name']!, country: item['country']!, image: item['image']!))
    .toList();

var popularsData = [
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "assets/images/destination_bali.jpeg"
  },
  {
    "name": "Paris",
    "country": "France",
    "image": "assets/images/destination_paris.png"
  },
  {
    "name": "Rome",
    "country": "Italy",
    "image": "assets/images/destination_rome.jpg"
  },
  {
    "name": "London",
    "country": "England",
    "image": "assets/images/destination_london.jpg"
  },
  {
    "name": "New York",
    "country": "USA",
    "image": "assets/images/destination_new_york.jpg"
  },
  {
    "name": "Dubai",
    "country": "UAE",
    "image": "assets/images/destination_dubai.png"
  },
];
