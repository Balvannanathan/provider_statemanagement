class RestaurantBO {
  String id;
  String name;
  int? arrivingTime;
  String? image;

  RestaurantBO({
    required this.id,
    required this.name,
    this.arrivingTime,
    this.image,
  });
}
