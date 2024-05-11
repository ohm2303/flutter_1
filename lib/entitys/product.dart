class ProductToDisplay {
  final String id;
  final String imageUrl;
  final String name;
  final double price;
  final String category;
  final String? description;
  final num? rating;
  ProductToDisplay({required this.id,required this.price,required this.imageUrl,required this.name,this.description,required this.category,this.rating});
}