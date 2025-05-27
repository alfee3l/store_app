class ProductModel {
  final dynamic id;
  final String title;
  final double price;
  final String description;
  final String image;
  final String category;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.category,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id:jsonData['id'] ,
      title: jsonData['title'],
     // price:double.parse(jsonData['price']),
      price: (jsonData['price'] as num).toDouble(),
      description: jsonData['description'],
      image: jsonData['image'],
      category: jsonData['category'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
        rate: (jsonData['rate'] as num).toDouble(),
        count: jsonData['count']);
  }
}
