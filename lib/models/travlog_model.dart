// ignore_for_file: public_member_api_docs, sort_constructors_first
class TravlogModel {
  String name;
  String content;
  String image;
  String place;
  TravlogModel({
    required this.name,
    required this.content,
    required this.image,
    required this.place,
  });
}

List<TravlogModel> travlogs = travlogData
    .map((item) => TravlogModel(
        name: item['name']!,
        content: item['content']!,
        image: item['image']!,
        place: item['place']!))
    .toList();

var travlogData = [
  {
    "name": "John Doe",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem.",
    "image": "assets/images/destination_bali.jpeg",
    "place": "Bali, Indonesia"
  },
  {
    "name": "John Doe",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem.",
    "image": "assets/images/destination_paris.png",
    "place": "Paris, France"
  },
  {
    "name": "John Doe",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem.",
    "image": "assets/images/destination_rome.jpg",
    "place": "Rome, Italy"
  },
  {
    "name": "John Doe",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem.",
    "image": "assets/images/destination_london.jpg",
    "place": "London, England"
  },
  {
    "name": "John Doe",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem.",
    "image": "assets/images/destination_new_york.jpg",
    "place": "New York, USA"
  },
  {
    "name": "John Doe",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam luctus, nunc nisl aliquam massa, eget aliquam nisl nisl sit amet lorem.",
    "image": "assets/images/destination_dubai.png",
    "place": "Dubai, UAE"
  },
];
