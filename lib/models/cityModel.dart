class City {
  int id;
  String name;
  String imageURL;
  bool isFavorite;

  City({
    required this.id,
    required this.name,
    required this.imageURL,
    this.isFavorite = false,
  });
}
