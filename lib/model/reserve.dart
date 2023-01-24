class ReserveResponse {
  final String name;
  final String description;
  final double rating;
  final List<String> album;
  final String locationImage;
  final String ownerImage;
  final String location;
  final int price;

  ReserveResponse({
    required this.name,
    required this.description,
    required this.rating,
    required this.album,
    required this.locationImage,
    required this.ownerImage,
    required this.location,
    required this.price,
  });

  factory ReserveResponse.fromJson(Map<String, dynamic> json) {
    return ReserveResponse(
      name: json['name'],
      description: json['description'],
      rating: json['rating'],
      album: json['album'],
      locationImage: json['locationImage'],
      ownerImage: json['ownerImage'],
      location: json['location'],
      price: json['price'],
    );
  }
}
