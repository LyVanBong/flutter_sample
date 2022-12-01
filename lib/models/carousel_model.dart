// ignore_for_file: public_member_api_docs, sort_constructors_first
class CarouselModel {
  String image;
  CarouselModel(
    this.image,
  );
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item)).toList();

var carouselsData = {
  'assets/images/carousel_hotel_discount.png',
  'assets/images/carousel_flight_discount.jpg',
  'assets/images/carousel_covid_discount.png'
};
